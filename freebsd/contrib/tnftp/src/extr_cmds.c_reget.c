
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getit (int,char**,int,char*) ;

void
reget(int argc, char *argv[])
{

 (void)getit(argc, argv, 1, "r+");
}
