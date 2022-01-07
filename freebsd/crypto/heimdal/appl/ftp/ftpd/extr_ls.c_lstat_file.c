
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_ino; int st_nlink; } ;
struct ViceIoctl {char* out; char* in; int out_size; scalar_t__ in_size; } ;
typedef scalar_t__ ino_t ;


 scalar_t__ EINVAL ;
 int VIOC_AFS_STAT_MT_PT ;
 scalar_t__ do_the_afs_dance ;
 scalar_t__ errno ;
 int free (char*) ;
 scalar_t__ k_hasafs () ;
 int k_pioctl (char*,int ,struct ViceIoctl*,int ) ;
 int lstat (char const*,struct stat*) ;
 char* malloc (int const) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
lstat_file (const char *file, struct stat *sb)
{
    return lstat (file, sb);
}
