
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISDIR (int ) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static int
isdir(const char *path, struct stat *stbufp)
{

 if (stat(path, stbufp) < 0)
  return (-1);
        if (!S_ISDIR(stbufp->st_mode))
  return (0);
 return (1);
}
