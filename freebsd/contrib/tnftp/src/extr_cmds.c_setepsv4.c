
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int epsv4 ;
 scalar_t__ epsv4bad ;
 int togglevar (int,char**,int *,char*) ;
 scalar_t__ verbose ;

void
setepsv4(int argc, char *argv[])
{
 code = togglevar(argc, argv, &epsv4,
     verbose ? "EPSV/EPRT on IPv4" : ((void*)0));
 epsv4bad = 0;
}
