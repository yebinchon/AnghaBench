
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int settype (int,char**) ;
 char** stype ;

void
setascii(int argc, char **argv)
{

 stype[1] = "ascii";
 settype(2, stype);
}
