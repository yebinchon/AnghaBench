
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cdinfo ;
 int efipart_cddev ;
 int efipart_print_common (int *,int *,int) ;

__attribute__((used)) static int
efipart_printcd(int verbose)
{
 return (efipart_print_common(&efipart_cddev, &cdinfo, verbose));
}
