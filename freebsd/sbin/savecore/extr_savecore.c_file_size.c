
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int off_t ;


 int fstatat (int,char const*,struct stat*,int ) ;

__attribute__((used)) static off_t
file_size(int savedirfd, const char *path)
{
 struct stat sb;


 if (fstatat(savedirfd, path, &sb, 0) == -1)
  return (0);
 return (sb.st_size);
}
