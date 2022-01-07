
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (char) ;
 scalar_t__ rl_filename_completion_desired ;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *
printable_part (char *pathname)
{
  char *temp;

  temp = rl_filename_completion_desired ? strrchr (pathname, '/') : (char *)((void*)0);




  return (temp ? ++temp : pathname);
}
