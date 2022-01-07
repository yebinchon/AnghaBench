
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int Char ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int * Strspl (int const*,int const*) ;
 char* short2str (int *) ;
 scalar_t__ stat (char*,struct stat*) ;
 int xfree (int *) ;

__attribute__((used)) static int
isadirectory(const Char *dir, const Char *file)


{
    if (dir) {
 Char *path;
 char *cpath;
 struct stat statb;

 path = Strspl(dir, file);
 cpath = short2str(path);
 xfree(path);
 if (stat(cpath, &statb) >= 0) {
     if (S_ISDIR(statb.st_mode))
  return 1;
 }
    }
    return 0;
}
