
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filestat {int fs_fflags; int fs_uflags; int fs_fd; int fs_type; int fs_ref_count; char* fs_path; int fs_cap_rights; int fs_offset; void* fs_typedep; } ;
typedef int off_t ;
typedef int cap_rights_t ;


 struct filestat* calloc (int,int) ;
 int cap_rights_init (int *) ;
 int warn (char*) ;

__attribute__((used)) static struct filestat *
filestat_new_entry(void *typedep, int type, int fd, int fflags, int uflags,
    int refcount, off_t offset, char *path, cap_rights_t *cap_rightsp)
{
 struct filestat *entry;

 entry = calloc(1, sizeof(*entry));
 if (entry == ((void*)0)) {
  warn("malloc()");
  return (((void*)0));
 }
 entry->fs_typedep = typedep;
 entry->fs_fflags = fflags;
 entry->fs_uflags = uflags;
 entry->fs_fd = fd;
 entry->fs_type = type;
 entry->fs_ref_count = refcount;
 entry->fs_offset = offset;
 entry->fs_path = path;
 if (cap_rightsp != ((void*)0))
  entry->fs_cap_rights = *cap_rightsp;
 else
  cap_rights_init(&entry->fs_cap_rights);
 return (entry);
}
