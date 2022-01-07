
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int warc_type_t ;
struct TYPE_8__ {unsigned int len; char* str; } ;
typedef TYPE_3__ warc_string_t ;
typedef scalar_t__ time_t ;
struct TYPE_7__ {unsigned int len; char* str; } ;
struct warc_s {unsigned int pver; unsigned int cntoff; TYPE_2__ pool; scalar_t__ cntlen; int sver; } ;
struct TYPE_9__ {int archive_format; } ;
struct archive_read {TYPE_4__ archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_6__ {struct warc_s* data; } ;


 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_WARC ;
 int ARCHIVE_OK ;
 int EINVAL ;
 int HDR_PROBE_LEN ;


 char* __archive_read_ahead (struct archive_read*,int ,scalar_t__*) ;
 int __archive_read_consume (struct archive_read*,int) ;
 char* _warc_find_eoh (char const*,scalar_t__) ;
 scalar_t__ _warc_rdlen (char const*,int) ;
 scalar_t__ _warc_rdmtm (char const*,int) ;
 scalar_t__ _warc_rdrtm (char const*,int) ;
 int _warc_rdtyp (char const*,int) ;
 TYPE_3__ _warc_rduri (char const*,int) ;
 unsigned int _warc_rdver (char const*,int) ;
 int _warc_skip (struct archive_read*) ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_set_ctime (struct archive_entry*,scalar_t__,long) ;
 int archive_entry_set_filetype (struct archive_entry*,int ) ;
 int archive_entry_set_mtime (struct archive_entry*,scalar_t__,long) ;
 int archive_entry_set_perm (struct archive_entry*,int) ;
 int archive_entry_set_size (struct archive_entry*,scalar_t__) ;
 int archive_set_error (TYPE_4__*,int ,char*,...) ;
 int archive_string_sprintf (int *,char*,unsigned int,unsigned int) ;
 int memcpy (char*,char*,unsigned int) ;
 char* realloc (char*,unsigned int) ;

__attribute__((used)) static int
_warc_rdhdr(struct archive_read *a, struct archive_entry *entry)
{

 struct warc_s *w = a->format->data;
 unsigned int ver;
 const char *buf;
 ssize_t nrd;
 const char *eoh;

 warc_string_t fnam;

 warc_type_t ftyp;

 ssize_t cntlen;

 time_t rtime;

 time_t mtime;

start_over:



 buf = __archive_read_ahead(a, (12U), &nrd);

 if (nrd < 0) {

  archive_set_error(
   &a->archive, ARCHIVE_ERRNO_MISC,
   "Bad record header");
  return (ARCHIVE_FATAL);
 } else if (buf == ((void*)0)) {


  return (ARCHIVE_EOF);
 }

 eoh = _warc_find_eoh(buf, nrd);
 if (eoh == ((void*)0)) {



  archive_set_error(
   &a->archive, ARCHIVE_ERRNO_MISC,
   "Bad record header");
  return (ARCHIVE_FATAL);
 }
 ver = _warc_rdver(buf, eoh - buf);

 if (ver == 0U) {
  archive_set_error(
   &a->archive, ARCHIVE_ERRNO_MISC,
   "Invalid record version");
  return (ARCHIVE_FATAL);
 } else if (ver < 1200U || ver > 10000U) {
  archive_set_error(
   &a->archive, ARCHIVE_ERRNO_MISC,
   "Unsupported record version: %u.%u",
   ver / 10000, (ver % 10000) / 100);
  return (ARCHIVE_FATAL);
 }
 cntlen = _warc_rdlen(buf, eoh - buf);
 if (cntlen < 0) {


  archive_set_error(
   &a->archive, EINVAL,
   "Bad content length");
  return (ARCHIVE_FATAL);
 }
 rtime = _warc_rdrtm(buf, eoh - buf);
 if (rtime == (time_t)-1) {


  archive_set_error(
   &a->archive, EINVAL,
   "Bad record time");
  return (ARCHIVE_FATAL);
 }


 a->archive.archive_format = ARCHIVE_FORMAT_WARC;
 if (ver != w->pver) {

  archive_string_sprintf(&w->sver,
   "WARC/%u.%u", ver / 10000, (ver % 10000) / 100);

  w->pver = ver;
 }

 ftyp = _warc_rdtyp(buf, eoh - buf);

 w->cntlen = cntlen;
 w->cntoff = 0U;
 mtime = 0;

 switch (ftyp) {
 case 128:
 case 129:


  fnam = _warc_rduri(buf, eoh - buf);


  if (fnam.len == 0 || fnam.str[fnam.len - 1] == '/') {

   fnam.len = 0U;
   fnam.str = ((void*)0);
   break;
  }


  if (fnam.len + 1U > w->pool.len) {
   w->pool.len = ((fnam.len + 64U) / 64U) * 64U;
   w->pool.str = realloc(w->pool.str, w->pool.len);
  }
  memcpy(w->pool.str, fnam.str, fnam.len);
  w->pool.str[fnam.len] = '\0';

  fnam.str = w->pool.str;





  if ((mtime = _warc_rdmtm(buf, eoh - buf)) == (time_t)-1) {
   mtime = rtime;
  }
  break;
 default:
  fnam.len = 0U;
  fnam.str = ((void*)0);
  break;
 }


 __archive_read_consume(a, eoh - buf);

 switch (ftyp) {
 case 128:
 case 129:
  if (fnam.len > 0U) {

   archive_entry_set_filetype(entry, AE_IFREG);
   archive_entry_copy_pathname(entry, fnam.str);
   archive_entry_set_size(entry, cntlen);
   archive_entry_set_perm(entry, 0644);

   archive_entry_set_ctime(entry, rtime, 0L);
   archive_entry_set_mtime(entry, mtime, 0L);
   break;
  }

 default:

  _warc_skip(a);
  goto start_over;
 }
 return (ARCHIVE_OK);
}
