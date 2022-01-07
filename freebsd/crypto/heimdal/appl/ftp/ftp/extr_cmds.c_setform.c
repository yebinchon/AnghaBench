
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 char* formname ;
 int printf (char*,char*) ;

void
setform(int argc, char **argv)
{

 printf("We only support %s format, sorry.\n", formname);
 code = -1;
}
