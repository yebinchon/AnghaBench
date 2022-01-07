
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* name; char* value; } ;


 char* OPTIONINDENT ;
 int UPRINTF (char*,char*) ;
 int code ;
 int fprintf (int ,char*,char*,char*,char*) ;
 struct option* optiontab ;
 int set_option (char*,char*,int) ;
 int ttyout ;

void
setoption(int argc, char *argv[])
{
 struct option *o;

 code = -1;
 if (argc == 0 || (argc != 1 && argc != 3)) {
  UPRINTF("usage: %s [option value]\n", argv[0]);
  return;
 }


 if (argc == 1) {
  for (o = optiontab; o->name != ((void*)0); o++) {
   fprintf(ttyout, "%-*s\t%s\n", ((int) sizeof("http_proxy")),
       o->name, o->value ? o->value : "");
  }
 } else {
  set_option(argv[1], argv[2], 1);
 }
 code = 0;
}
