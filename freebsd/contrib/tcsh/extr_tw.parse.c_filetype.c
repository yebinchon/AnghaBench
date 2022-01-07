
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef char Char ;


 int STRlistlinks ;
 scalar_t__ S_ISBLK (int) ;
 scalar_t__ S_ISCDF (int) ;
 scalar_t__ S_ISCHR (int) ;
 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISFIFO (int) ;
 scalar_t__ S_ISHIDDEN (int) ;
 scalar_t__ S_ISLNK (int) ;
 scalar_t__ S_ISNWK (int) ;
 scalar_t__ S_ISSOCK (int) ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 char* Strspl (char*,char*) ;
 scalar_t__ adrof (int ) ;
 int lstat (char*,struct stat*) ;
 scalar_t__ nostat (char*) ;
 char* short2str (char*) ;
 int stat (char*,struct stat*) ;
 char* strspl (char*,char*) ;
 int xfree (char*) ;

__attribute__((used)) static Char
filetype(Char *dir, Char *file)
{
    if (dir) {
 Char *path;
 char *ptr;
 struct stat statb;

 if (nostat(dir)) return(' ');

 path = Strspl(dir, file);
 ptr = short2str(path);
 xfree(path);

 if (lstat(ptr, &statb) != -1) {
     if (statb.st_mode & (S_IXUSR|S_IXGRP|S_IXOTH))
  return ('*');
 }
    }
    return (' ');
}
