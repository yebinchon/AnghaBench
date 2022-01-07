
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static int
validate_filename(const char *file)
{

 if ('.' == file[0] && '/' == file[1])
  file += 2;

 return ! (strstr(file, "../") || strstr(file, "/..") ||
     (strncmp(file, "man", 3) && strncmp(file, "cat", 3)));
}
