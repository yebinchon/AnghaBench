
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int str ;


 int * fgets (char*,int,int ) ;
 int fprintf (int ,char*) ;
 int stdin ;
 int stdout ;
 scalar_t__ strncasecmp (char*,char*,int) ;

int
get_confirmation(void)
{
 char str[1024];
 int response = -1;

 do {
  fprintf(stdout, "Are you SURE you want to do this? (yes/no) ");
  if (fgets(str, sizeof(str), stdin) != ((void*)0)) {
   if (strncasecmp(str, "yes", 3) == 0)
    response = 1;
   else if (strncasecmp(str, "no", 2) == 0)
    response = 0;
   else
    fprintf(stdout,
        "Please answer \"yes\" or \"no\"\n");
  } else
   response = 0;
 } while (response == -1);
 return (response);
}
