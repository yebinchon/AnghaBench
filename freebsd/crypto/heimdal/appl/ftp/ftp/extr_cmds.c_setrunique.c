
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 char* onoff (int) ;
 int printf (char*,char*) ;
 int runique ;

void
setrunique(int argc, char **argv)
{

 runique = !runique;
 printf("Receive unique %s.\n", onoff(runique));
 code = runique;
}
