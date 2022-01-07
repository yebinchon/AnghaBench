
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int efipart_hddev ;
 int efipart_print_common (int *,int *,int) ;
 int hdinfo ;

__attribute__((used)) static int
efipart_printhd(int verbose)
{
 return (efipart_print_common(&efipart_hddev, &hdinfo, verbose));
}
