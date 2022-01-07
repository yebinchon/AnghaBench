
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*,char*) ;
 scalar_t__ getit (int,char**,int,char*) ;
 int ttyout ;

void
newer(int argc, char *argv[])
{

 if (getit(argc, argv, -1, "w"))
  fprintf(ttyout,
      "Local file \"%s\" is newer than remote file \"%s\".\n",
      argv[2], argv[1]);
}
