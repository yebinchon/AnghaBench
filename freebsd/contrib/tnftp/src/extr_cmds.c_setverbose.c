
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int togglevar (int,char**,int *,char*) ;
 int verbose ;

void
setverbose(int argc, char *argv[])
{

 code = togglevar(argc, argv, &verbose, "Verbose mode");
}
