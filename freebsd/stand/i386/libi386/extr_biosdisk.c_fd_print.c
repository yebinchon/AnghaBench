
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bd_print_common (int *,int *,int) ;
 int biosfd ;
 int fdinfo ;

__attribute__((used)) static int
fd_print(int verbose)
{
 return (bd_print_common(&biosfd, &fdinfo, verbose));
}
