
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int default_get_precision () ;
 int default_get_resolution () ;
 int printf (char*,int,int) ;

int
main(
 int argc,
 char *argv[]
 )
{
 printf("log2(resolution) = %d, log2(precision) = %d\n",
        default_get_resolution(),
        default_get_precision());
 return 0;
}
