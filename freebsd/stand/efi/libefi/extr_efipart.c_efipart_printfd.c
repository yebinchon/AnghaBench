
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int efipart_fddev ;
 int efipart_print_common (int *,int *,int) ;
 int fdinfo ;

__attribute__((used)) static int
efipart_printfd(int verbose)
{
 return (efipart_print_common(&efipart_fddev, &fdinfo, verbose));
}
