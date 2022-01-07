
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stat_t ;


 int printf (char*,...) ;
 int show_stat (int *,char*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static void
show_stats(stat_t *sp, char *what)
{
 const char *s = "";
 char *w;

 for (w = strtok(what, ","); w != ((void*)0); w = strtok(((void*)0), ",")) {
  printf("%s", s);
  show_stat(sp, w);
  s = ",";
 }
 printf("\n");
}
