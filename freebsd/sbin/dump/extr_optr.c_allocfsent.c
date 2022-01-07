
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fstab {int fs_freq; int fs_passno; int * fs_spec; int * fs_type; int * fs_file; } ;


 int errno ;
 scalar_t__ malloc (int) ;
 int quit (char*,int ) ;
 void* strdup (int *) ;
 int strerror (int ) ;

struct fstab *
allocfsent(const struct fstab *fs)
{
 struct fstab *new;

 new = (struct fstab *)malloc(sizeof (*fs));
 if (new == ((void*)0) ||
     (new->fs_file = strdup(fs->fs_file)) == ((void*)0) ||
     (new->fs_type = strdup(fs->fs_type)) == ((void*)0) ||
     (new->fs_spec = strdup(fs->fs_spec)) == ((void*)0))
  quit("%s\n", strerror(errno));
 new->fs_passno = fs->fs_passno;
 new->fs_freq = fs->fs_freq;
 return (new);
}
