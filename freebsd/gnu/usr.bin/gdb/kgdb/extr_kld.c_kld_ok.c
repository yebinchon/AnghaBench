
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISREG (int ) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static int
kld_ok (char *path)
{
 struct stat sb;

 if (stat(path, &sb) == 0 && S_ISREG(sb.st_mode))
  return (1);
 return (0);
}
