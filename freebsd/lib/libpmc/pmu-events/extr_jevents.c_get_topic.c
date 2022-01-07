
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,int ) ;
 int pr_info (char*,int ) ;
 int prog ;
 scalar_t__ strlen (char*) ;
 int topic ;

__attribute__((used)) static char *get_topic(void)
{
 char *tp;
 int i;


 i = asprintf(&tp, "%s", topic);
 if (i < 0) {
  pr_info("%s: asprintf() error %s\n", prog);
  return ((void*)0);
 }

 for (i = 0; i < (int) strlen(tp); i++) {
  char c = tp[i];

  if (c == '-')
   tp[i] = ' ';
  else if (c == '.') {
   tp[i] = '\0';
   break;
  }
 }

 return tp;
}
