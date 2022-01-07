
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPRINTF (char*,char*) ;
 int code ;
 char* formname ;
 int fprintf (int ,char*,char*) ;
 int ttyout ;

void
setform(int argc, char *argv[])
{

 if (argc != 2) {
  UPRINTF("usage: %s format\n", argv[0]);
  code = -1;
  return;
 }
 fprintf(ttyout, "We only support %s format, sorry.\n", formname);
 code = -1;
}
