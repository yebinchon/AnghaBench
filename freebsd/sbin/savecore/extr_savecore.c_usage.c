
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int xo_error (char*,char*,char*,char*) ;

__attribute__((used)) static void
usage(void)
{
 xo_error("%s\n%s\n%s\n",
     "usage: savecore -c [-v] [device ...]",
     "       savecore -C [-v] [device ...]",
     "       savecore [-fkvz] [-m maxdumps] [directory [device ...]]");
 exit(1);
}
