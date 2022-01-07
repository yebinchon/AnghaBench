
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tar {int sparse_offset; int sparse_numbytes; int sparse_gnu_major; int sparse_gnu_minor; int realsize_override; int sparse_gnu_pending; int pax_hdrcharset_binary; int entry_uname; void* entry_bytes_remaining; void* realsize; int entry_pathname; int entry_linkpath; int entry_gname; int entry_pathname_override; int sparse_allowed; } ;
struct archive_read {int archive; } ;
struct archive_entry {int dummy; } ;
typedef int int64_t ;
typedef int dev_t ;


 int AE_SYMLINK_TYPE_DIRECTORY ;
 int AE_SYMLINK_TYPE_FILE ;
 int ARCHIVE_ENTRY_ACL_TYPE_ACCESS ;
 int ARCHIVE_ENTRY_ACL_TYPE_DEFAULT ;
 int ARCHIVE_ENTRY_ACL_TYPE_NFS4 ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_entry_copy_fflags_text (struct archive_entry*,char const*) ;
 int archive_entry_set_atime (struct archive_entry*,int ,long) ;
 int archive_entry_set_birthtime (struct archive_entry*,int ,long) ;
 int archive_entry_set_ctime (struct archive_entry*,int ,long) ;
 int archive_entry_set_dev (struct archive_entry*,int ) ;
 int archive_entry_set_gid (struct archive_entry*,void*) ;
 int archive_entry_set_ino (struct archive_entry*,void*) ;
 int archive_entry_set_mtime (struct archive_entry*,int ,long) ;
 int archive_entry_set_nlink (struct archive_entry*,unsigned int) ;
 int archive_entry_set_rdevmajor (struct archive_entry*,int ) ;
 int archive_entry_set_rdevminor (struct archive_entry*,int ) ;
 int archive_entry_set_size (struct archive_entry*,void*) ;
 int archive_entry_set_symlink_type (struct archive_entry*,int ) ;
 int archive_entry_set_uid (struct archive_entry*,void*) ;
 int archive_set_error (int *,int ,char*) ;
 int archive_strcpy (int *,char const*) ;
 int gnu_add_sparse_entry (struct archive_read*,struct tar*,int,int) ;
 int gnu_sparse_01_parse (struct archive_read*,struct tar*,char const*) ;
 int memcmp (char const*,char*,int) ;
 int pax_attribute_acl (struct archive_read*,struct tar*,struct archive_entry*,char const*,int ) ;
 int pax_attribute_schily_xattr (struct archive_entry*,char const*,char const*,size_t) ;
 int pax_attribute_xattr (struct archive_entry*,char const*,char const*) ;
 int pax_time (char const*,int *,long*) ;
 int solaris_sparse_parse (struct archive_read*,struct tar*,struct archive_entry*,char const*) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int) ;
 void* tar_atol10 (char const*,int ) ;

__attribute__((used)) static int
pax_attribute(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const char *key, const char *value, size_t value_length)
{
 int64_t s;
 long n;
 int err = ARCHIVE_OK, r;


 if (value == ((void*)0))
  value = "";


 switch (key[0]) {
 case 'G':

  if (strncmp(key, "GNU.sparse", 10) == 0 &&
      !tar->sparse_allowed) {
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "Non-regular file cannot be sparse");
   return (ARCHIVE_FATAL);
  }


  if (strcmp(key, "GNU.sparse.numblocks") == 0) {
   tar->sparse_offset = -1;
   tar->sparse_numbytes = -1;
   tar->sparse_gnu_major = 0;
   tar->sparse_gnu_minor = 0;
  }
  if (strcmp(key, "GNU.sparse.offset") == 0) {
   tar->sparse_offset = tar_atol10(value, strlen(value));
   if (tar->sparse_numbytes != -1) {
    if (gnu_add_sparse_entry(a, tar,
        tar->sparse_offset, tar->sparse_numbytes)
        != ARCHIVE_OK)
     return (ARCHIVE_FATAL);
    tar->sparse_offset = -1;
    tar->sparse_numbytes = -1;
   }
  }
  if (strcmp(key, "GNU.sparse.numbytes") == 0) {
   tar->sparse_numbytes = tar_atol10(value, strlen(value));
   if (tar->sparse_numbytes != -1) {
    if (gnu_add_sparse_entry(a, tar,
        tar->sparse_offset, tar->sparse_numbytes)
        != ARCHIVE_OK)
     return (ARCHIVE_FATAL);
    tar->sparse_offset = -1;
    tar->sparse_numbytes = -1;
   }
  }
  if (strcmp(key, "GNU.sparse.size") == 0) {
   tar->realsize = tar_atol10(value, strlen(value));
   archive_entry_set_size(entry, tar->realsize);
   tar->realsize_override = 1;
  }


  if (strcmp(key, "GNU.sparse.map") == 0) {
   tar->sparse_gnu_major = 0;
   tar->sparse_gnu_minor = 1;
   if (gnu_sparse_01_parse(a, tar, value) != ARCHIVE_OK)
    return (ARCHIVE_WARN);
  }


  if (strcmp(key, "GNU.sparse.major") == 0) {
   tar->sparse_gnu_major = (int)tar_atol10(value, strlen(value));
   tar->sparse_gnu_pending = 1;
  }
  if (strcmp(key, "GNU.sparse.minor") == 0) {
   tar->sparse_gnu_minor = (int)tar_atol10(value, strlen(value));
   tar->sparse_gnu_pending = 1;
  }
  if (strcmp(key, "GNU.sparse.name") == 0) {






   archive_strcpy(&(tar->entry_pathname_override), value);
  }
  if (strcmp(key, "GNU.sparse.realsize") == 0) {
   tar->realsize = tar_atol10(value, strlen(value));
   archive_entry_set_size(entry, tar->realsize);
   tar->realsize_override = 1;
  }
  break;
 case 'L':






  if (strcmp(key, "LIBARCHIVE.creationtime") == 0) {
   pax_time(value, &s, &n);
   archive_entry_set_birthtime(entry, s, n);
  }
  if (strcmp(key, "LIBARCHIVE.symlinktype") == 0) {
   if (strcmp(value, "file") == 0) {
    archive_entry_set_symlink_type(entry,
        AE_SYMLINK_TYPE_FILE);
   } else if (strcmp(value, "dir") == 0) {
    archive_entry_set_symlink_type(entry,
        AE_SYMLINK_TYPE_DIRECTORY);
   }
  }
  if (memcmp(key, "LIBARCHIVE.xattr.", 17) == 0)
   pax_attribute_xattr(entry, key, value);
  break;
 case 'S':

  if (strcmp(key, "SCHILY.acl.access") == 0) {
   r = pax_attribute_acl(a, tar, entry, value,
       ARCHIVE_ENTRY_ACL_TYPE_ACCESS);
   if (r == ARCHIVE_FATAL)
    return (r);
  } else if (strcmp(key, "SCHILY.acl.default") == 0) {
   r = pax_attribute_acl(a, tar, entry, value,
       ARCHIVE_ENTRY_ACL_TYPE_DEFAULT);
   if (r == ARCHIVE_FATAL)
    return (r);
  } else if (strcmp(key, "SCHILY.acl.ace") == 0) {
   r = pax_attribute_acl(a, tar, entry, value,
       ARCHIVE_ENTRY_ACL_TYPE_NFS4);
   if (r == ARCHIVE_FATAL)
    return (r);
  } else if (strcmp(key, "SCHILY.devmajor") == 0) {
   archive_entry_set_rdevmajor(entry,
       (dev_t)tar_atol10(value, strlen(value)));
  } else if (strcmp(key, "SCHILY.devminor") == 0) {
   archive_entry_set_rdevminor(entry,
       (dev_t)tar_atol10(value, strlen(value)));
  } else if (strcmp(key, "SCHILY.fflags") == 0) {
   archive_entry_copy_fflags_text(entry, value);
  } else if (strcmp(key, "SCHILY.dev") == 0) {
   archive_entry_set_dev(entry,
       (dev_t)tar_atol10(value, strlen(value)));
  } else if (strcmp(key, "SCHILY.ino") == 0) {
   archive_entry_set_ino(entry,
       tar_atol10(value, strlen(value)));
  } else if (strcmp(key, "SCHILY.nlink") == 0) {
   archive_entry_set_nlink(entry, (unsigned)
       tar_atol10(value, strlen(value)));
  } else if (strcmp(key, "SCHILY.realsize") == 0) {
   tar->realsize = tar_atol10(value, strlen(value));
   tar->realsize_override = 1;
   archive_entry_set_size(entry, tar->realsize);
  } else if (strncmp(key, "SCHILY.xattr.", 13) == 0) {
   pax_attribute_schily_xattr(entry, key, value,
       value_length);
  } else if (strcmp(key, "SUN.holesdata") == 0) {

   r = solaris_sparse_parse(a, tar, entry, value);
   if (r < err) {
    if (r == ARCHIVE_FATAL)
     return (r);
    err = r;
    archive_set_error(&a->archive,
        ARCHIVE_ERRNO_MISC,
        "Parse error: SUN.holesdata");
   }
  }
  break;
 case 'a':
  if (strcmp(key, "atime") == 0) {
   pax_time(value, &s, &n);
   archive_entry_set_atime(entry, s, n);
  }
  break;
 case 'c':
  if (strcmp(key, "ctime") == 0) {
   pax_time(value, &s, &n);
   archive_entry_set_ctime(entry, s, n);
  } else if (strcmp(key, "charset") == 0) {

  } else if (strcmp(key, "comment") == 0) {

  }
  break;
 case 'g':
  if (strcmp(key, "gid") == 0) {
   archive_entry_set_gid(entry,
       tar_atol10(value, strlen(value)));
  } else if (strcmp(key, "gname") == 0) {
   archive_strcpy(&(tar->entry_gname), value);
  }
  break;
 case 'h':
  if (strcmp(key, "hdrcharset") == 0) {
   if (strcmp(value, "BINARY") == 0)

    tar->pax_hdrcharset_binary = 1;
   else if (strcmp(value, "ISO-IR 10646 2000 UTF-8") == 0)
    tar->pax_hdrcharset_binary = 0;
  }
  break;
 case 'l':

  if (strcmp(key, "linkpath") == 0) {
   archive_strcpy(&(tar->entry_linkpath), value);
  }
  break;
 case 'm':
  if (strcmp(key, "mtime") == 0) {
   pax_time(value, &s, &n);
   archive_entry_set_mtime(entry, s, n);
  }
  break;
 case 'p':
  if (strcmp(key, "path") == 0) {
   archive_strcpy(&(tar->entry_pathname), value);
  }
  break;
 case 'r':

  break;
 case 's':


  if (strcmp(key, "size") == 0) {

   tar->entry_bytes_remaining
       = tar_atol10(value, strlen(value));






   if (!tar->realsize_override) {
    archive_entry_set_size(entry,
        tar->entry_bytes_remaining);
    tar->realsize
        = tar->entry_bytes_remaining;
   }
  }
  break;
 case 'u':
  if (strcmp(key, "uid") == 0) {
   archive_entry_set_uid(entry,
       tar_atol10(value, strlen(value)));
  } else if (strcmp(key, "uname") == 0) {
   archive_strcpy(&(tar->entry_uname), value);
  }
  break;
 }
 return (err);
}
