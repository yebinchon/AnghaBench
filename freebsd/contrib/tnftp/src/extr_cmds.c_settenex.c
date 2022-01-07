
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPRINTF (char*,char*) ;
 int code ;
 int set_type (char*) ;

void
settenex(int argc, char *argv[])
{

 if (argc == 0) {
  UPRINTF("usage: %s\n", argv[0]);
  code = -1;
  return;
 }
 set_type("tenex");
}
