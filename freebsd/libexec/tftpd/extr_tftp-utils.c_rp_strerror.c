
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s ;
struct TYPE_2__ {int error; int * desc; } ;


 TYPE_1__* rp_errors ;
 int sprintf (char*,char*,int) ;
 int strlcpy (char*,int *,size_t) ;
 scalar_t__ strlen (int *) ;

char *
rp_strerror(int error)
{
 static char s[100];
 size_t space = sizeof(s);
 int i = 0;

 while (rp_errors[i].desc != ((void*)0)) {
  if (rp_errors[i].error == error) {
   strlcpy(s, rp_errors[i].desc, space);
   space -= strlen(rp_errors[i].desc);
  }
  i++;
 }
 if (s[0] == '\0')
  sprintf(s, "unknown (error=%d)", error);
 return (s);
}
