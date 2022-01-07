
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 char* onoff (int) ;
 int printf (char*,char*) ;
 int sunique ;

void
setsunique(int argc, char **argv)
{

 sunique = !sunique;
 printf("Store unique %s.\n", onoff(sunique));
 code = sunique;
}
