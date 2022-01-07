
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISDIR (int ) ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static int
is_dir(const char *path)
{
 struct stat sb;


 if (stat(path, &sb) == -1)
  return(0);

 return(S_ISDIR(sb.st_mode));
}
