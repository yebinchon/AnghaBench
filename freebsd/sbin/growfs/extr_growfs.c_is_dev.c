
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISCHR (int ) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static int
is_dev(const char *name)
{
 struct stat devstat;

 if (stat(name, &devstat) != 0)
  return (0);
 if (!S_ISCHR(devstat.st_mode))
  return (0);
 return (1);
}
