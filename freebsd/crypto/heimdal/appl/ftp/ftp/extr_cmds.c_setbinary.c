
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int settype (int,char**) ;
 char** stype ;

void
setbinary(int argc, char **argv)
{

 stype[1] = "binary";
 settype(2, stype);
}
