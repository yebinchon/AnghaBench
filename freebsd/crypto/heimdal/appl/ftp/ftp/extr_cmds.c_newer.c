
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TYPE_I ;
 scalar_t__ curtype ;
 scalar_t__ getit (int,char**,int,char*) ;
 int printf (char*,char*,char*) ;

void
newer(int argc, char **argv)
{

 if (getit(argc, argv, -1, curtype == TYPE_I ? "wb" : "w"))
  printf("Local file \"%s\" is newer than remote file \"%s\"\n",
   argv[2], argv[1]);
}
