
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {unsigned int length; char* s; } ;
struct lha {int header_crc; unsigned char dos_attr; size_t birthtime; size_t mtime; size_t atime; int setflag; int mode; int gid; int uid; TYPE_1__ uname; TYPE_1__ gname; int * sconv; void* origsize; void* compsize; int atime_tv_nsec; int mtime_tv_nsec; int birthtime_tv_nsec; TYPE_1__ dirname; TYPE_1__ filename; } ;
struct archive_string {char* s; } ;
struct archive_read {int archive; } ;
typedef int mode_t ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ATIME_IS_SET ;
 int BIRTHTIME_IS_SET ;
 int UNIX_MODE_IS_SET ;
 void* __archive_read_ahead (struct archive_read*,size_t,int *) ;
 int __archive_read_consume (struct archive_read*,size_t) ;
 int archive_le16dec (unsigned char const*) ;
 size_t archive_le32dec (unsigned char const*) ;
 void* archive_le64dec (unsigned char const*) ;
 int archive_set_error (int *,int ,char*) ;
 int * archive_string_conversion_from_charset (int *,char const*,int) ;
 int archive_string_empty (TYPE_1__*) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 int archive_string_sprintf (struct archive_string*,char*,int) ;
 int archive_strncpy (TYPE_1__*,char const*,size_t) ;
 int lha_crc16 (int ,...) ;
 void* lha_win_time (void*,int *) ;
 int truncated_error (struct archive_read*) ;

__attribute__((used)) static int
lha_read_file_extended_header(struct archive_read *a, struct lha *lha,
    uint16_t *crc, int sizefield_length, size_t limitsize, size_t *total_size)
{
 const void *h;
 const unsigned char *extdheader;
 size_t extdsize;
 size_t datasize;
 unsigned int i;
 unsigned char extdtype;
 *total_size = sizefield_length;

 for (;;) {

  if ((h =
      __archive_read_ahead(a, sizefield_length, ((void*)0))) == ((void*)0))
   return (truncated_error(a));


  if (sizefield_length == sizeof(uint16_t))
   extdsize = archive_le16dec(h);
  else
   extdsize = archive_le32dec(h);
  if (extdsize == 0) {

   if (crc != ((void*)0))
    *crc = lha_crc16(*crc, h, sizefield_length);
   __archive_read_consume(a, sizefield_length);
   return (ARCHIVE_OK);
  }


  if (((uint64_t)*total_size + extdsize) >
        (uint64_t)limitsize ||
      extdsize <= (size_t)sizefield_length)
   goto invalid;


  if ((h = __archive_read_ahead(a, extdsize, ((void*)0))) == ((void*)0))
   return (truncated_error(a));
  *total_size += extdsize;

  extdheader = (const unsigned char *)h;

  extdtype = extdheader[sizefield_length];

  datasize = extdsize - (1 + sizefield_length);

  extdheader += sizefield_length + 1;

  if (crc != ((void*)0) && extdtype != 0x00)
   *crc = lha_crc16(*crc, h, extdsize);
  switch (extdtype) {
  case 0x00:


   if (datasize >= 2) {
    lha->header_crc = archive_le16dec(extdheader);
    if (crc != ((void*)0)) {
     static const char zeros[2] = {0, 0};
     *crc = lha_crc16(*crc, h,
         extdsize - datasize);

     *crc = lha_crc16(*crc, zeros, 2);
     *crc = lha_crc16(*crc,
         extdheader+2, datasize - 2);
    }
   }
   break;
  case 0x01:
   if (datasize == 0) {

    archive_string_empty(&lha->filename);
    break;
   }
   if (extdheader[0] == '\0')
    goto invalid;
   archive_strncpy(&lha->filename,
       (const char *)extdheader, datasize);
   break;
  case 0x02:
   if (datasize == 0 || extdheader[0] == '\0')

    goto invalid;

   archive_strncpy(&lha->dirname,
         (const char *)extdheader, datasize);




   for (i = 0; i < lha->dirname.length; i++) {
    if ((unsigned char)lha->dirname.s[i] == 0xFF)
     lha->dirname.s[i] = '/';
   }

   if (lha->dirname.s[lha->dirname.length-1] != '/')

    goto invalid;
   break;
  case 0x40:
   if (datasize == 2)
    lha->dos_attr = (unsigned char)
        (archive_le16dec(extdheader) & 0xff);
   break;
  case 0x41:
   if (datasize == (sizeof(uint64_t) * 3)) {
    lha->birthtime = lha_win_time(
        archive_le64dec(extdheader),
        &lha->birthtime_tv_nsec);
    extdheader += sizeof(uint64_t);
    lha->mtime = lha_win_time(
        archive_le64dec(extdheader),
        &lha->mtime_tv_nsec);
    extdheader += sizeof(uint64_t);
    lha->atime = lha_win_time(
        archive_le64dec(extdheader),
        &lha->atime_tv_nsec);
    lha->setflag |= BIRTHTIME_IS_SET |
        ATIME_IS_SET;
   }
   break;
  case 0x42:
   if (datasize == sizeof(uint64_t) * 2) {
    lha->compsize = archive_le64dec(extdheader);
    extdheader += sizeof(uint64_t);
    lha->origsize = archive_le64dec(extdheader);
   }
   break;
  case 0x46:



   if (datasize == sizeof(uint32_t)) {
    struct archive_string cp;
    const char *charset;

    archive_string_init(&cp);
    switch (archive_le32dec(extdheader)) {
    case 65001:
     charset = "UTF-8";
     break;
    default:
     archive_string_sprintf(&cp, "CP%d",
         (int)archive_le32dec(extdheader));
     charset = cp.s;
     break;
    }
    lha->sconv =
        archive_string_conversion_from_charset(
     &(a->archive), charset, 1);
    archive_string_free(&cp);
    if (lha->sconv == ((void*)0))
     return (ARCHIVE_FATAL);
   }
   break;
  case 0x50:
   if (datasize == sizeof(uint16_t)) {
    lha->mode = archive_le16dec(extdheader);
    lha->setflag |= UNIX_MODE_IS_SET;
   }
   break;
  case 0x51:
   if (datasize == (sizeof(uint16_t) * 2)) {
    lha->gid = archive_le16dec(extdheader);
    lha->uid = archive_le16dec(extdheader+2);
   }
   break;
  case 0x52:
   if (datasize > 0)
    archive_strncpy(&lha->gname,
        (const char *)extdheader, datasize);
   break;
  case 0x53:
   if (datasize > 0)
    archive_strncpy(&lha->uname,
        (const char *)extdheader, datasize);
   break;
  case 0x54:
   if (datasize == sizeof(uint32_t))
    lha->mtime = archive_le32dec(extdheader);
   break;
  case 0x7f:

   if (datasize == 16) {
    lha->dos_attr = (unsigned char)
        (archive_le16dec(extdheader) & 0xff);
    lha->mode = archive_le16dec(extdheader+2);
    lha->gid = archive_le16dec(extdheader+4);
    lha->uid = archive_le16dec(extdheader+6);
    lha->birthtime = archive_le32dec(extdheader+8);
    lha->atime = archive_le32dec(extdheader+12);
    lha->setflag |= UNIX_MODE_IS_SET
        | BIRTHTIME_IS_SET | ATIME_IS_SET;
   }
   break;
  case 0xff:
   if (datasize == 20) {
    lha->mode = (mode_t)archive_le32dec(extdheader);
    lha->gid = archive_le32dec(extdheader+4);
    lha->uid = archive_le32dec(extdheader+8);
    lha->birthtime = archive_le32dec(extdheader+12);
    lha->atime = archive_le32dec(extdheader+16);
    lha->setflag |= UNIX_MODE_IS_SET
        | BIRTHTIME_IS_SET | ATIME_IS_SET;
   }
   break;
  case 0x43:
  case 0x44:
  case 0x45:
  default:
   break;
  }

  __archive_read_consume(a, extdsize);
 }
invalid:
 archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
     "Invalid extended LHa header");
 return (ARCHIVE_FATAL);
}
