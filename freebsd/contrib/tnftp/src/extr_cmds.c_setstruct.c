
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPRINTF (char*,char*) ;
 int code ;
 int fprintf (int ,char*,char*) ;
 char* structname ;
 int ttyout ;

void
setstruct(int argc, char *argv[])
{

 if (argc != 2) {
  UPRINTF("usage: %s struct-mode\n", argv[0]);
  code = -1;
  return;
 }
 fprintf(ttyout, "We only support %s structure, sorry.\n", structname);
 code = -1;
}
