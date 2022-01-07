
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 scalar_t__ hash ;
 scalar_t__ progress ;
 int togglevar (int,char**,scalar_t__*,char*) ;

void
setprogress(int argc, char *argv[])
{

 code = togglevar(argc, argv, &progress, "Progress bar");
 if (progress)
  hash = 0;
}
