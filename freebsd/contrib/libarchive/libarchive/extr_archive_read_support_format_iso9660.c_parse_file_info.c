
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct iso9660 {int logical_block_size; unsigned char suspOffset; int seenSUSP; struct file_info* rr_moved; scalar_t__ seenRockridge; scalar_t__ opt_support_rockridge; scalar_t__ seenJoliet; scalar_t__ volume_block; } ;
struct TYPE_7__ {scalar_t__ s; } ;
struct TYPE_6__ {int * first; int ** last; } ;
struct file_info {int offset; int size; size_t utf16be_bytes; int mode; int multi_extent; int number; int nlinks; int rr_moved; int rr_moved_has_re_only; int cl_offset; int re_descendant; TYPE_3__ name; struct file_info* parent; int subdirs; scalar_t__ re; scalar_t__ symlink_continues; scalar_t__ name_continues; int * utf16be_name; TYPE_2__ rede_files; int mtime; int atime; int ctime; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
typedef int int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_5__ {scalar_t__ data; } ;


 int AE_IFDIR ;
 int AE_IFLNK ;
 int AE_IFMT ;
 int AE_IFREG ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_OK ;
 int DR_date_offset ;
 int DR_ext_attr_length_offset ;
 int DR_extent_offset ;
 int DR_file_unit_size_offset ;
 size_t DR_flags_offset ;
 int DR_interleave_offset ;
 size_t DR_length_offset ;
 size_t DR_name_len_offset ;
 int DR_name_offset ;
 int DR_size_offset ;
 int DR_size_size ;
 int DR_volume_sequence_number_offset ;
 int ENOMEM ;
 scalar_t__ archive_le32dec (unsigned char const*) ;
 int archive_set_error (int *,int ,char*) ;
 int archive_string_free (TYPE_3__*) ;
 int archive_strncpy (TYPE_3__*,char const*,size_t) ;
 scalar_t__ calloc (int,int) ;
 int dump_isodirrec (int ,unsigned char const*) ;
 int fprintf (int ,char*) ;
 int free (struct file_info*) ;
 int isodate7 (unsigned char const*) ;
 int * malloc (size_t) ;
 scalar_t__ memcmp (unsigned char const*,char*,int) ;
 int memcpy (int *,unsigned char const*,size_t) ;
 int parse_rockridge (struct archive_read*,struct file_info*,unsigned char const*,unsigned char const*) ;
 int register_file (struct iso9660*,struct file_info*) ;
 int stderr ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 int toi (unsigned char const*,int) ;

__attribute__((used)) static struct file_info *
parse_file_info(struct archive_read *a, struct file_info *parent,
    const unsigned char *isodirrec, size_t reclen)
{
 struct iso9660 *iso9660;
 struct file_info *file, *filep;
 size_t name_len;
 const unsigned char *rr_start, *rr_end;
 const unsigned char *p;
 size_t dr_len;
 uint64_t fsize, offset;
 int32_t location;
 int flags;

 iso9660 = (struct iso9660 *)(a->format->data);

 if (reclen != 0)
  dr_len = (size_t)isodirrec[DR_length_offset];




 if (reclen == 0 || reclen < dr_len || dr_len < 34) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
   "Invalid length of directory record");
  return (((void*)0));
 }
 name_len = (size_t)isodirrec[DR_name_len_offset];
 location = archive_le32dec(isodirrec + DR_extent_offset);
 fsize = toi(isodirrec + DR_size_offset, DR_size_size);

 if (dr_len - 33 < name_len || name_len == 0) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Invalid length of file identifier");
  return (((void*)0));
 }






 if (location > 0 &&
     (location + ((fsize + iso9660->logical_block_size -1)
        / iso9660->logical_block_size))
   > (uint32_t)iso9660->volume_block) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Invalid location of extent of file");
  return (((void*)0));
 }


 if (fsize != 0 && location < 0) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Invalid location of extent of file");
  return (((void*)0));
 }


 offset = iso9660->logical_block_size * (uint64_t)location;
 for (filep = parent; filep != ((void*)0); filep = filep->parent) {
  if (filep->offset == offset) {
   archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
       "Directory structure contains loop");
   return (((void*)0));
  }
 }


 file = (struct file_info *)calloc(1, sizeof(*file));
 if (file == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "No memory for file entry");
  return (((void*)0));
 }
 file->parent = parent;
 file->offset = offset;
 file->size = fsize;
 file->mtime = isodate7(isodirrec + DR_date_offset);
 file->ctime = file->atime = file->mtime;
 file->rede_files.first = ((void*)0);
 file->rede_files.last = &(file->rede_files.first);

 p = isodirrec + DR_name_offset;


 rr_start = p + name_len + (name_len & 1 ? 0 : 1);
 rr_end = isodirrec + dr_len;

 if (iso9660->seenJoliet) {





  if (name_len > 206)
   name_len = 206;
  name_len &= ~1;
  if (name_len > 4 && p[name_len-4] == 0 && p[name_len-3] == ';'
      && p[name_len-2] == 0 && p[name_len-1] == '1')
   name_len -= 4;





  if ((file->utf16be_name = malloc(name_len)) == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM,
       "No memory for file name");
   goto fail;
  }
  memcpy(file->utf16be_name, p, name_len);
  file->utf16be_bytes = name_len;
 } else {

  if (name_len > 2 && p[name_len - 2] == ';' &&
    p[name_len - 1] == '1')
   name_len -= 2;

  if (name_len > 1 && p[name_len - 1] == '.')
   --name_len;

  archive_strncpy(&file->name, (const char *)p, name_len);
 }

 flags = isodirrec[DR_flags_offset];
 if (flags & 0x02)
  file->mode = AE_IFDIR | 0700;
 else
  file->mode = AE_IFREG | 0400;
 if (flags & 0x80)
  file->multi_extent = 1;
 else
  file->multi_extent = 0;
 if (file->size == 0 && location >= 0) {





  file->number = -1;

  file->offset = -1;
 } else
  file->number = (int64_t)(uint32_t)location;


 if (iso9660->opt_support_rockridge) {
  if (parent == ((void*)0) && rr_end - rr_start >= 7) {
   p = rr_start;
   if (memcmp(p, "SP\x07\x01\xbe\xef", 6) == 0) {
    iso9660->suspOffset = p[6];
    iso9660->seenSUSP = 1;
    rr_start += 7;
   }
  }
  if (iso9660->seenSUSP) {
   int r;

   file->name_continues = 0;
   file->symlink_continues = 0;
   rr_start += iso9660->suspOffset;
   r = parse_rockridge(a, file, rr_start, rr_end);
   if (r != ARCHIVE_OK)
    goto fail;







   if (file->size > 0 &&
       (file->mode & AE_IFMT) == AE_IFLNK) {
    file->size = 0;
    file->number = -1;
    file->offset = -1;
   }
  } else


   iso9660->opt_support_rockridge = 0;
 }

 file->nlinks = 1;

 if (parent != ((void*)0) && (flags & 0x02))
  parent->subdirs++;

 if (iso9660->seenRockridge) {
  if (parent != ((void*)0) && parent->parent == ((void*)0) &&
      (flags & 0x02) && iso9660->rr_moved == ((void*)0) &&
      file->name.s &&
      (strcmp(file->name.s, "rr_moved") == 0 ||
       strcmp(file->name.s, ".rr_moved") == 0)) {
   iso9660->rr_moved = file;
   file->rr_moved = 1;
   file->rr_moved_has_re_only = 1;
   file->re = 0;
   parent->subdirs--;
  } else if (file->re) {



   if (parent == ((void*)0) || parent->rr_moved == 0) {
    archive_set_error(&a->archive,
        ARCHIVE_ERRNO_MISC,
        "Invalid Rockridge RE");
    goto fail;
   }



   if (file->cl_offset) {
    archive_set_error(&a->archive,
        ARCHIVE_ERRNO_MISC,
        "Invalid Rockridge RE and CL");
    goto fail;
   }



   if ((flags & 0x02) == 0) {
    archive_set_error(&a->archive,
        ARCHIVE_ERRNO_MISC,
        "Invalid Rockridge RE");
    goto fail;
   }
  } else if (parent != ((void*)0) && parent->rr_moved)
   file->rr_moved_has_re_only = 0;
  else if (parent != ((void*)0) && (flags & 0x02) &&
      (parent->re || parent->re_descendant))
   file->re_descendant = 1;
  if (file->cl_offset) {
   struct file_info *r;

   if (parent == ((void*)0) || parent->parent == ((void*)0)) {
    archive_set_error(&a->archive,
        ARCHIVE_ERRNO_MISC,
        "Invalid Rockridge CL");
    goto fail;
   }



   if ((flags & 0x02) != 0) {
    archive_set_error(&a->archive,
        ARCHIVE_ERRNO_MISC,
        "Invalid Rockridge CL");
    goto fail;
   }
   parent->subdirs++;




   file->offset = file->number = file->cl_offset + 1;





   for (r = parent; r; r = r->parent) {
    if (r->offset == file->cl_offset) {
     archive_set_error(&a->archive,
         ARCHIVE_ERRNO_MISC,
         "Invalid Rockridge CL");
     goto fail;
    }
   }
   if (file->cl_offset == file->offset ||
       parent->rr_moved) {
    archive_set_error(&a->archive,
        ARCHIVE_ERRNO_MISC,
        "Invalid Rockridge CL");
    goto fail;
   }
  }
 }
 register_file(iso9660, file);
 return (file);
fail:
 archive_string_free(&file->name);
 free(file);
 return (((void*)0));
}
