
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int epsv6 ;
 scalar_t__ epsv6bad ;
 int togglevar (int,char**,int *,char*) ;
 scalar_t__ verbose ;

void
setepsv6(int argc, char *argv[])
{
 code = togglevar(argc, argv, &epsv6,
     verbose ? "EPSV/EPRT on IPv6" : ((void*)0));
 epsv6bad = 0;
}
