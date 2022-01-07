
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wchar_t ;
typedef size_t uint64_t ;
typedef int time_t ;
struct TYPE_10__ {char* s; } ;
struct pax {int sparse_map_padding; int entry_bytes_remaining; int entry_padding; int * sparse_list; TYPE_1__ pax_header; TYPE_1__ sparse_map; scalar_t__ opt_binary; struct archive_string_conv* sconv_utf8; } ;
struct archive_wstring {char* s; } ;
struct TYPE_11__ {scalar_t__ archive_format; } ;
struct archive_write {TYPE_4__ archive; scalar_t__ format_data; } ;
struct archive_string_conv {int dummy; } ;
struct archive_string {char* s; } ;
struct archive_entry {int dummy; } ;
typedef int ssize_t ;
typedef int intmax_t ;
typedef int int64_t ;
 scalar_t__ AE_SYMLINK_TYPE_DIRECTORY ;
 scalar_t__ AE_SYMLINK_TYPE_FILE ;
 int ARCHIVE_ENTRY_ACL_STYLE_COMPACT ;
 int ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID ;
 int ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA ;
 int ARCHIVE_ENTRY_ACL_TYPE_ACCESS ;
 int ARCHIVE_ENTRY_ACL_TYPE_DEFAULT ;
 int ARCHIVE_ENTRY_ACL_TYPE_NFS4 ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE ;
 scalar_t__ ARCHIVE_FORMAT_TAR_PAX_RESTRICTED ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int ENOMEM ;
 int S_ISGID ;
 int S_ISUID ;
 int S_ISVTX ;
 int __archive_write_format_header_ustar (struct archive_write*,char*,struct archive_entry*,char,int,int *) ;
 int __archive_write_nulls (struct archive_write*,size_t) ;
 int __archive_write_output (struct archive_write*,char*,int) ;
 struct archive_entry* __la_win_entry_in_posix_pathseparator (struct archive_entry*) ;
 int add_pax_acl (struct archive_write*,struct archive_entry*,struct pax*,int) ;
 int add_pax_attr (TYPE_1__*,char*,char const*) ;
 int add_pax_attr_int (TYPE_1__*,char*,int) ;
 int add_pax_attr_time (TYPE_1__*,char*,int,scalar_t__) ;
 int archive_entry_acl_types (struct archive_entry*) ;
 int archive_entry_atime (struct archive_entry*) ;
 scalar_t__ archive_entry_atime_nsec (struct archive_entry*) ;
 int archive_entry_birthtime (struct archive_entry*) ;
 scalar_t__ archive_entry_birthtime_is_set (struct archive_entry*) ;
 scalar_t__ archive_entry_birthtime_nsec (struct archive_entry*) ;
 struct archive_entry* archive_entry_clone (struct archive_entry*) ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_copy_pathname_w (struct archive_entry*,char*) ;
 int archive_entry_ctime (struct archive_entry*) ;
 scalar_t__ archive_entry_ctime_nsec (struct archive_entry*) ;
 char* archive_entry_fflags_text (struct archive_entry*) ;
 int const archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_free (struct archive_entry*) ;
 int archive_entry_gid (struct archive_entry*) ;
 int archive_entry_gname (struct archive_entry*) ;
 void* archive_entry_mac_metadata (struct archive_entry*,size_t*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 scalar_t__ archive_entry_mtime_nsec (struct archive_entry*) ;
 struct archive_entry* archive_entry_new2 (TYPE_4__*) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 int* archive_entry_pathname_w (struct archive_entry*) ;
 int archive_entry_perm (struct archive_entry*) ;
 int archive_entry_rdevmajor (struct archive_entry*) ;
 int archive_entry_rdevminor (struct archive_entry*) ;
 int archive_entry_set_atime (struct archive_entry*,int ,int ) ;
 int archive_entry_set_ctime (struct archive_entry*,int ,int ) ;
 int archive_entry_set_filetype (struct archive_entry*,int const) ;
 int archive_entry_set_gid (struct archive_entry*,int) ;
 int archive_entry_set_gname (struct archive_entry*,int ) ;
 int archive_entry_set_hardlink (struct archive_entry*,char*) ;
 int archive_entry_set_mode (struct archive_entry*,int) ;
 int archive_entry_set_mtime (struct archive_entry*,int,scalar_t__) ;
 int archive_entry_set_pathname (struct archive_entry*,int ) ;
 int archive_entry_set_perm (struct archive_entry*,int ) ;
 int archive_entry_set_size (struct archive_entry*,size_t) ;
 int archive_entry_set_symlink (struct archive_entry*,char*) ;
 int archive_entry_set_uid (struct archive_entry*,int) ;
 int archive_entry_set_uname (struct archive_entry*,int ) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_entry_sparse_add_entry (struct archive_entry*,int,int ) ;
 int archive_entry_sparse_next (struct archive_entry*,int*,int*) ;
 int archive_entry_sparse_reset (struct archive_entry*) ;
 scalar_t__ archive_entry_symlink_type (struct archive_entry*) ;
 int archive_entry_uid (struct archive_entry*) ;
 int archive_entry_uname (struct archive_entry*) ;
 scalar_t__ archive_entry_xattr_count (struct archive_entry*) ;
 int archive_set_error (TYPE_4__*,int ,char*,...) ;
 int archive_strappend_char (struct archive_wstring*,char) ;
 int archive_strcpy (struct archive_wstring*,char*) ;
 int archive_string_conversion_charset_name (struct archive_string_conv*) ;
 struct archive_string_conv* archive_string_conversion_to_charset (TYPE_4__*,char*,int) ;
 int archive_string_empty (TYPE_1__*) ;
 int * archive_string_ensure (struct archive_wstring*,size_t) ;
 int archive_string_free (struct archive_wstring*) ;
 int archive_string_init (struct archive_wstring*) ;
 int archive_string_sprintf (TYPE_1__*,char*,int,...) ;
 int archive_strlen (TYPE_1__*) ;
 int archive_strncpy (struct archive_wstring*,char const*,size_t) ;
 scalar_t__ archive_write_pax_data (struct archive_write*,void const*,size_t) ;
 int archive_write_pax_finish_entry (struct archive_write*) ;
 int archive_write_pax_header_xattrs (struct archive_write*,struct pax*,struct archive_entry*) ;
 int archive_wstrappend_wchar (struct archive_wstring*,int) ;
 int * archive_wstring_ensure (struct archive_wstring*,size_t) ;
 int archive_wstring_free (struct archive_wstring*) ;
 int archive_wstrncpy (struct archive_wstring*,int const*,size_t) ;
 int build_gnu_sparse_name (char*,char*) ;
 int build_pax_attribute_name (char*,char const*) ;
 int build_ustar_entry_name (char*,char const*,size_t,int *) ;
 int free (char*) ;
 int get_entry_gname (struct archive_write*,struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ;
 int get_entry_hardlink (struct archive_write*,struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ;
 int get_entry_pathname (struct archive_write*,struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ;
 int get_entry_symlink (struct archive_write*,struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ;
 int get_entry_uname (struct archive_write*,struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ;
 scalar_t__ has_non_ASCII (char const*) ;
 char* malloc (size_t) ;
 int memmove (char*,char*,int) ;
 int sparse_list_add (struct pax*,int,size_t) ;
 int sparse_list_clear (struct pax*) ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 char* strrchr (char*,char) ;
 size_t wcslen (int const*) ;

__attribute__((used)) static int
archive_write_pax_header(struct archive_write *a,
    struct archive_entry *entry_original)
{
 struct archive_entry *entry_main;
 const char *p;
 const char *suffix;
 int need_extension, r, ret;
 int acl_types;
 int sparse_count;
 uint64_t sparse_total, real_size;
 struct pax *pax;
 const char *hardlink;
 const char *path = ((void*)0), *linkpath = ((void*)0);
 const char *uname = ((void*)0), *gname = ((void*)0);
 const void *mac_metadata;
 size_t mac_metadata_size;
 struct archive_string_conv *sconv;
 size_t hardlink_length, path_length, linkpath_length;
 size_t uname_length, gname_length;

 char paxbuff[512];
 char ustarbuff[512];
 char ustar_entry_name[256];
 char pax_entry_name[256];
 char gnu_sparse_name[256];
 struct archive_string entry_name;

 ret = ARCHIVE_OK;
 need_extension = 0;
 pax = (struct pax *)a->format_data;


 if (archive_entry_pathname(entry_original) == ((void*)0)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
     "Can't record entry in tar file without pathname");
  return (ARCHIVE_FAILED);
 }




 if (pax->opt_binary)
  sconv = ((void*)0);
 else {

  if (pax->sconv_utf8 == ((void*)0)) {


   pax->sconv_utf8 = archive_string_conversion_to_charset(
       &(a->archive), "UTF-8", 1);
   if (pax->sconv_utf8 == ((void*)0))

    return (ARCHIVE_FAILED);
  }
  sconv = pax->sconv_utf8;
 }

 r = get_entry_hardlink(a, entry_original, &hardlink,
     &hardlink_length, sconv);
 if (r == ARCHIVE_FATAL)
  return (r);
 else if (r != ARCHIVE_OK) {
  r = get_entry_hardlink(a, entry_original, &hardlink,
      &hardlink_length, ((void*)0));
  if (r == ARCHIVE_FATAL)
   return (r);
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Can't translate linkname '%s' to %s", hardlink,
      archive_string_conversion_charset_name(sconv));
  ret = ARCHIVE_WARN;
  sconv = ((void*)0);
 }


 if (hardlink == ((void*)0)) {
  switch (archive_entry_filetype(entry_original)) {
  case 134:
  case 133:
  case 131:
  case 130:
  case 129:
   break;
  case 132:
  {
    p = archive_entry_pathname(entry_original);





   if (p != ((void*)0) && p[0] != '\0' && p[strlen(p) - 1] != '/') {
    struct archive_string as;

    archive_string_init(&as);
    path_length = strlen(p);
    if (archive_string_ensure(&as,
        path_length + 2) == ((void*)0)) {
     archive_set_error(&a->archive, ENOMEM,
         "Can't allocate pax data");
     archive_string_free(&as);
     return(ARCHIVE_FATAL);
    }
    archive_strncpy(&as, p, path_length);
    archive_strappend_char(&as, '/');
    archive_entry_copy_pathname(
        entry_original, as.s);
    archive_string_free(&as);
   }
   break;
  }
  case 128:
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "tar format cannot archive socket");
   return (ARCHIVE_FAILED);
  default:
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "tar format cannot archive this (type=0%lo)",
       (unsigned long)
       archive_entry_filetype(entry_original));
   return (ARCHIVE_FAILED);
  }
 }
 mac_metadata =
     archive_entry_mac_metadata(entry_original, &mac_metadata_size);
 if (mac_metadata != ((void*)0)) {
  const char *oname;
  char *name, *bname;
  size_t name_length;
  struct archive_entry *extra = archive_entry_new2(&a->archive);

  oname = archive_entry_pathname(entry_original);
  name_length = strlen(oname);
  name = malloc(name_length + 3);
  if (name == ((void*)0) || extra == ((void*)0)) {

   archive_entry_free(extra);
   free(name);
   return (ARCHIVE_FAILED);
  }
  strcpy(name, oname);

  bname = strrchr(name, '/');
  while (bname != ((void*)0) && bname[1] == '\0') {
   *bname = '\0';
   bname = strrchr(name, '/');
  }
  if (bname == ((void*)0)) {
   memmove(name + 2, name, name_length + 1);
   memmove(name, "._", 2);
  } else {
   bname += 1;
   memmove(bname + 2, bname, strlen(bname) + 1);
   memmove(bname, "._", 2);
  }
  archive_entry_copy_pathname(extra, name);
  free(name);

  archive_entry_set_size(extra, mac_metadata_size);
  archive_entry_set_filetype(extra, 129);
  archive_entry_set_perm(extra,
      archive_entry_perm(entry_original));
  archive_entry_set_mtime(extra,
      archive_entry_mtime(entry_original),
      archive_entry_mtime_nsec(entry_original));
  archive_entry_set_gid(extra,
      archive_entry_gid(entry_original));
  archive_entry_set_gname(extra,
      archive_entry_gname(entry_original));
  archive_entry_set_uid(extra,
      archive_entry_uid(entry_original));
  archive_entry_set_uname(extra,
      archive_entry_uname(entry_original));


  r = archive_write_pax_header(a, extra);
  archive_entry_free(extra);
  if (r < ARCHIVE_WARN)
   return (r);
  if (r < ret)
   ret = r;
  r = (int)archive_write_pax_data(a, mac_metadata,
      mac_metadata_size);
  if (r < ARCHIVE_WARN)
   return (r);
  if (r < ret)
   ret = r;
  r = archive_write_pax_finish_entry(a);
  if (r < ARCHIVE_WARN)
   return (r);
  if (r < ret)
   ret = r;
 }
 entry_main = archive_entry_clone(entry_original);

 if (entry_main == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate pax data");
  return(ARCHIVE_FATAL);
 }
 archive_string_empty(&(pax->pax_header));
 archive_string_empty(&(pax->sparse_map));
 sparse_total = 0;
 sparse_list_clear(pax);

 if (hardlink == ((void*)0) &&
     archive_entry_filetype(entry_main) == 129)
  sparse_count = archive_entry_sparse_reset(entry_main);
 else
  sparse_count = 0;
 if (sparse_count) {
  int64_t offset, length, last_offset = 0;

  while (archive_entry_sparse_next(
      entry_main, &offset, &length) == ARCHIVE_OK)
   last_offset = offset + length;




  if (last_offset < archive_entry_size(entry_main))
   archive_entry_sparse_add_entry(entry_main,
       archive_entry_size(entry_main), 0);
  sparse_count = archive_entry_sparse_reset(entry_main);
 }






 r = get_entry_pathname(a, entry_main, &path, &path_length, sconv);
 if (r == ARCHIVE_FATAL)
  return (r);
 else if (r != ARCHIVE_OK) {
  r = get_entry_pathname(a, entry_main, &path,
      &path_length, ((void*)0));
  if (r == ARCHIVE_FATAL)
   return (r);
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Can't translate pathname '%s' to %s", path,
      archive_string_conversion_charset_name(sconv));
  ret = ARCHIVE_WARN;
  sconv = ((void*)0);
 }
 r = get_entry_uname(a, entry_main, &uname, &uname_length, sconv);
 if (r == ARCHIVE_FATAL)
  return (r);
 else if (r != ARCHIVE_OK) {
  r = get_entry_uname(a, entry_main, &uname, &uname_length, ((void*)0));
  if (r == ARCHIVE_FATAL)
   return (r);
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Can't translate uname '%s' to %s", uname,
      archive_string_conversion_charset_name(sconv));
  ret = ARCHIVE_WARN;
  sconv = ((void*)0);
 }
 r = get_entry_gname(a, entry_main, &gname, &gname_length, sconv);
 if (r == ARCHIVE_FATAL)
  return (r);
 else if (r != ARCHIVE_OK) {
  r = get_entry_gname(a, entry_main, &gname, &gname_length, ((void*)0));
  if (r == ARCHIVE_FATAL)
   return (r);
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Can't translate gname '%s' to %s", gname,
      archive_string_conversion_charset_name(sconv));
  ret = ARCHIVE_WARN;
  sconv = ((void*)0);
 }
 linkpath = hardlink;
 linkpath_length = hardlink_length;
 if (linkpath == ((void*)0)) {
  r = get_entry_symlink(a, entry_main, &linkpath,
      &linkpath_length, sconv);
  if (r == ARCHIVE_FATAL)
   return (r);
  else if (r != ARCHIVE_OK) {
   r = get_entry_symlink(a, entry_main, &linkpath,
       &linkpath_length, ((void*)0));
   if (r == ARCHIVE_FATAL)
    return (r);
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "Can't translate linkname '%s' to %s", linkpath,
       archive_string_conversion_charset_name(sconv));
   ret = ARCHIVE_WARN;
   sconv = ((void*)0);
  }
 }



 if (sconv == ((void*)0) && !pax->opt_binary) {
  if (hardlink != ((void*)0)) {
   r = get_entry_hardlink(a, entry_main, &hardlink,
       &hardlink_length, ((void*)0));
   if (r == ARCHIVE_FATAL)
    return (r);
   linkpath = hardlink;
   linkpath_length = hardlink_length;
  }
  r = get_entry_pathname(a, entry_main, &path,
      &path_length, ((void*)0));
  if (r == ARCHIVE_FATAL)
   return (r);
  r = get_entry_uname(a, entry_main, &uname, &uname_length, ((void*)0));
  if (r == ARCHIVE_FATAL)
   return (r);
  r = get_entry_gname(a, entry_main, &gname, &gname_length, ((void*)0));
  if (r == ARCHIVE_FATAL)
   return (r);
 }


 if (sconv == ((void*)0))
  add_pax_attr(&(pax->pax_header), "hdrcharset", "BINARY");







 if (has_non_ASCII(path)) {

  add_pax_attr(&(pax->pax_header), "path", path);
  archive_entry_set_pathname(entry_main,
      build_ustar_entry_name(ustar_entry_name,
   path, path_length, ((void*)0)));
  need_extension = 1;
 } else {





  if (path_length <= 100) {

  } else {


   suffix = strchr(path + path_length - 100 - 1, '/');

   if (suffix == path)
    suffix = strchr(suffix + 1, '/');







   if (suffix == ((void*)0)
       || suffix[1] == '\0'
       || suffix - path > 155)
   {
    add_pax_attr(&(pax->pax_header), "path", path);
    archive_entry_set_pathname(entry_main,
        build_ustar_entry_name(ustar_entry_name,
     path, path_length, ((void*)0)));
    need_extension = 1;
   }
  }
 }

 if (linkpath != ((void*)0)) {


  if (linkpath_length > 100 || has_non_ASCII(linkpath)) {
   add_pax_attr(&(pax->pax_header), "linkpath", linkpath);
   if (linkpath_length > 100) {
    if (hardlink != ((void*)0))
     archive_entry_set_hardlink(entry_main,
         "././@LongHardLink");
    else
     archive_entry_set_symlink(entry_main,
         "././@LongSymLink");
   }
   need_extension = 1;
  }
 }


 archive_string_init(&entry_name);
 archive_strcpy(&entry_name, archive_entry_pathname(entry_main));


 if (archive_entry_size(entry_main) >= (((int64_t)1) << 33)) {
  add_pax_attr_int(&(pax->pax_header), "size",
      archive_entry_size(entry_main));
  need_extension = 1;
 }


 if ((unsigned int)archive_entry_gid(entry_main) >= (1 << 18)) {
  add_pax_attr_int(&(pax->pax_header), "gid",
      archive_entry_gid(entry_main));
  need_extension = 1;
 }



 if (gname != ((void*)0)) {
  if (gname_length > 31 || has_non_ASCII(gname)) {
   add_pax_attr(&(pax->pax_header), "gname", gname);
   need_extension = 1;
  }
 }


 if ((unsigned int)archive_entry_uid(entry_main) >= (1 << 18)) {
  add_pax_attr_int(&(pax->pax_header), "uid",
      archive_entry_uid(entry_main));
  need_extension = 1;
 }


 if (uname != ((void*)0)) {
  if (uname_length > 31 || has_non_ASCII(uname)) {
   add_pax_attr(&(pax->pax_header), "uname", uname);
   need_extension = 1;
  }
 }
 if (archive_entry_filetype(entry_main) == 134
     || archive_entry_filetype(entry_main) == 133) {




  int rdevmajor, rdevminor;
  rdevmajor = archive_entry_rdevmajor(entry_main);
  rdevminor = archive_entry_rdevminor(entry_main);
  if (rdevmajor >= (1 << 18)) {
   add_pax_attr_int(&(pax->pax_header), "SCHILY.devmajor",
       rdevmajor);
   need_extension = 1;
  }





  if (rdevminor >= (1 << 18)) {
   add_pax_attr_int(&(pax->pax_header), "SCHILY.devminor",
       rdevminor);



   need_extension = 1;
  }
 }
 if (!need_extension &&
     ((archive_entry_mtime(entry_main) < 0)
  || (archive_entry_mtime(entry_main) >= 0x7fffffff)))
  need_extension = 1;


 p = archive_entry_fflags_text(entry_main);
 if (!need_extension && p != ((void*)0) && *p != '\0')
  need_extension = 1;


 if (!need_extension && archive_entry_xattr_count(entry_original) > 0)
  need_extension = 1;


 if (!need_extension && sparse_count > 0)
  need_extension = 1;

 acl_types = archive_entry_acl_types(entry_original);


 if (!need_extension && acl_types != 0)
  need_extension = 1;


 if (!need_extension && archive_entry_symlink_type(entry_main) > 0)
  need_extension = 1;







 if (a->archive.archive_format != ARCHIVE_FORMAT_TAR_PAX_RESTRICTED) {
  if (archive_entry_ctime(entry_main) != 0 ||
      archive_entry_ctime_nsec(entry_main) != 0)
   add_pax_attr_time(&(pax->pax_header), "ctime",
       archive_entry_ctime(entry_main),
       archive_entry_ctime_nsec(entry_main));

  if (archive_entry_atime(entry_main) != 0 ||
      archive_entry_atime_nsec(entry_main) != 0)
   add_pax_attr_time(&(pax->pax_header), "atime",
       archive_entry_atime(entry_main),
       archive_entry_atime_nsec(entry_main));


  if (archive_entry_birthtime_is_set(entry_main) &&
      archive_entry_birthtime(entry_main)
      < archive_entry_mtime(entry_main))
   add_pax_attr_time(&(pax->pax_header),
       "LIBARCHIVE.creationtime",
       archive_entry_birthtime(entry_main),
       archive_entry_birthtime_nsec(entry_main));
 }
 if (a->archive.archive_format != ARCHIVE_FORMAT_TAR_PAX_RESTRICTED ||
     need_extension) {
  if (archive_entry_mtime(entry_main) < 0 ||
      archive_entry_mtime(entry_main) >= 0x7fffffff ||
      archive_entry_mtime_nsec(entry_main) != 0)
   add_pax_attr_time(&(pax->pax_header), "mtime",
       archive_entry_mtime(entry_main),
       archive_entry_mtime_nsec(entry_main));


  p = archive_entry_fflags_text(entry_main);
  if (p != ((void*)0) && *p != '\0')
   add_pax_attr(&(pax->pax_header), "SCHILY.fflags", p);


  if ((acl_types & ARCHIVE_ENTRY_ACL_TYPE_NFS4) != 0) {
   ret = add_pax_acl(a, entry_original, pax,
       ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID |
       ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA |
       ARCHIVE_ENTRY_ACL_STYLE_COMPACT);
   if (ret == ARCHIVE_FATAL)
    return (ARCHIVE_FATAL);
  }
  if (acl_types & ARCHIVE_ENTRY_ACL_TYPE_ACCESS) {
   ret = add_pax_acl(a, entry_original, pax,
       ARCHIVE_ENTRY_ACL_TYPE_ACCESS |
       ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID |
       ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA);
   if (ret == ARCHIVE_FATAL)
    return (ARCHIVE_FATAL);
  }
  if (acl_types & ARCHIVE_ENTRY_ACL_TYPE_DEFAULT) {
   ret = add_pax_acl(a, entry_original, pax,
       ARCHIVE_ENTRY_ACL_TYPE_DEFAULT |
       ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID |
       ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA);
   if (ret == ARCHIVE_FATAL)
    return (ARCHIVE_FATAL);
  }


  if (sparse_count > 0) {
   int64_t soffset, slength;

   add_pax_attr_int(&(pax->pax_header),
       "GNU.sparse.major", 1);
   add_pax_attr_int(&(pax->pax_header),
       "GNU.sparse.minor", 0);




   add_pax_attr(&(pax->pax_header),
       "GNU.sparse.name", path);
   add_pax_attr_int(&(pax->pax_header),
       "GNU.sparse.realsize",
       archive_entry_size(entry_main));




   archive_entry_set_pathname(entry_main,
       build_gnu_sparse_name(gnu_sparse_name,
           entry_name.s));





   archive_string_sprintf(&(pax->sparse_map), "%d\n",
       sparse_count);
   while (archive_entry_sparse_next(entry_main,
       &soffset, &slength) == ARCHIVE_OK) {
    archive_string_sprintf(&(pax->sparse_map),
        "%jd\n%jd\n",
        (intmax_t)soffset,
        (intmax_t)slength);
    sparse_total += slength;
    if (sparse_list_add(pax, soffset, slength)
        != ARCHIVE_OK) {
     archive_set_error(&a->archive,
         ENOMEM,
         "Can't allocate memory");
     archive_entry_free(entry_main);
     archive_string_free(&entry_name);
     return (ARCHIVE_FATAL);
    }
   }
  }


  if (archive_write_pax_header_xattrs(a, pax, entry_original)
      == ARCHIVE_FATAL) {
   archive_entry_free(entry_main);
   archive_string_free(&entry_name);
   return (ARCHIVE_FATAL);
  }


  if (archive_entry_symlink_type(entry_main) ==
      AE_SYMLINK_TYPE_FILE) {
   add_pax_attr(&(pax->pax_header),
       "LIBARCHIVE.symlinktype", "file");
  } else if (archive_entry_symlink_type(entry_main) ==
      AE_SYMLINK_TYPE_DIRECTORY) {
   add_pax_attr(&(pax->pax_header),
       "LIBARCHIVE.symlinktype", "dir");
  }
 }


 if (archive_entry_filetype(entry_main) != 129)
  archive_entry_set_size(entry_main, 0);





 if (a->archive.archive_format != ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE &&
     hardlink != ((void*)0))
  archive_entry_set_size(entry_main, 0);
 if (hardlink != ((void*)0))
  archive_entry_set_size(entry_main, 0);


 real_size = archive_entry_size(entry_main);





 if (archive_strlen(&(pax->sparse_map))) {
  size_t mapsize = archive_strlen(&(pax->sparse_map));
  pax->sparse_map_padding = 0x1ff & (-(ssize_t)mapsize);
  archive_entry_set_size(entry_main,
      mapsize + pax->sparse_map_padding + sparse_total);
 }
 if (__archive_write_format_header_ustar(a, ustarbuff, entry_main, -1, 0,
     ((void*)0)) == ARCHIVE_FATAL)
  return (ARCHIVE_FATAL);


 if (archive_strlen(&(pax->pax_header)) > 0) {
  struct archive_entry *pax_attr_entry;
  time_t s;
  int64_t uid, gid;
  int mode;

  pax_attr_entry = archive_entry_new2(&a->archive);
  p = entry_name.s;
  archive_entry_set_pathname(pax_attr_entry,
      build_pax_attribute_name(pax_entry_name, p));
  archive_entry_set_size(pax_attr_entry,
      archive_strlen(&(pax->pax_header)));

  uid = archive_entry_uid(entry_main);
  if (uid >= 1 << 18)
   uid = (1 << 18) - 1;
  archive_entry_set_uid(pax_attr_entry, uid);
  gid = archive_entry_gid(entry_main);
  if (gid >= 1 << 18)
   gid = (1 << 18) - 1;
  archive_entry_set_gid(pax_attr_entry, gid);

  mode = archive_entry_mode(entry_main);
  archive_entry_set_mode(pax_attr_entry, mode);


  archive_entry_set_uname(pax_attr_entry,
      archive_entry_uname(entry_main));
  archive_entry_set_gname(pax_attr_entry,
      archive_entry_gname(entry_main));


  s = archive_entry_mtime(entry_main);
  if (s < 0) { s = 0; }
  if (s >= 0x7fffffff) { s = 0x7fffffff; }
  archive_entry_set_mtime(pax_attr_entry, s, 0);


  archive_entry_set_atime(pax_attr_entry, 0, 0);


  archive_entry_set_ctime(pax_attr_entry, 0, 0);

  r = __archive_write_format_header_ustar(a, paxbuff,
      pax_attr_entry, 'x', 1, ((void*)0));

  archive_entry_free(pax_attr_entry);


  if (r < ARCHIVE_WARN) {
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "archive_write_pax_header: "
       "'x' header failed?!  This can't happen.\n");
   return (ARCHIVE_FATAL);
  } else if (r < ret)
   ret = r;
  r = __archive_write_output(a, paxbuff, 512);
  if (r != ARCHIVE_OK) {
   sparse_list_clear(pax);
   pax->entry_bytes_remaining = 0;
   pax->entry_padding = 0;
   return (ARCHIVE_FATAL);
  }

  pax->entry_bytes_remaining = archive_strlen(&(pax->pax_header));
  pax->entry_padding =
      0x1ff & (-(int64_t)pax->entry_bytes_remaining);

  r = __archive_write_output(a, pax->pax_header.s,
      archive_strlen(&(pax->pax_header)));
  if (r != ARCHIVE_OK) {

   return (ARCHIVE_FATAL);
  }

  r = __archive_write_nulls(a, (size_t)pax->entry_padding);
  if (r != ARCHIVE_OK) {

   return (ARCHIVE_FATAL);
  }
  pax->entry_bytes_remaining = pax->entry_padding = 0;
 }


 r = __archive_write_output(a, ustarbuff, 512);
 if (r != ARCHIVE_OK)
  return (r);






 archive_entry_set_size(entry_original, real_size);
 if (pax->sparse_list == ((void*)0) && real_size > 0) {


  sparse_list_add(pax, 0, real_size);
  sparse_total = real_size;
 }
 pax->entry_padding = 0x1ff & (-(int64_t)sparse_total);
 archive_entry_free(entry_main);
 archive_string_free(&entry_name);

 return (ret);
}
