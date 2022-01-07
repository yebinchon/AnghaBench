
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int setepsv4 (int,char**) ;
 int setepsv6 (int,char**) ;

void
setepsv(int argc, char*argv[])
{
 setepsv4(argc,argv);
 setepsv6(argc,argv);
}
