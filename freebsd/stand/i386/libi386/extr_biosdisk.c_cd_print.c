
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bd_print_common (int *,int *,int) ;
 int bioscd ;
 int cdinfo ;

__attribute__((used)) static int
cd_print(int verbose)
{
 return (bd_print_common(&bioscd, &cdinfo, verbose));
}
