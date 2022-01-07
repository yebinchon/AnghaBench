
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Decimal (char*,int,int,int ) ;
 int dos_cyls ;
 int dos_cylsecs ;
 int dos_heads ;
 int dos_sectors ;
 scalar_t__ ok (char*) ;
 int print_params () ;

void
get_params_to_use()
{
 int tmp;
 print_params();
 if (ok("Do you want to change our idea of what BIOS thinks ?"))
 {
  do
  {
   Decimal("BIOS's idea of #cylinders", dos_cyls, tmp, 0);
   Decimal("BIOS's idea of #heads", dos_heads, tmp, 0);
   Decimal("BIOS's idea of #sectors", dos_sectors, tmp, 0);
   dos_cylsecs = dos_heads * dos_sectors;
   print_params();
  }
  while(!ok("Are you happy with this choice"));
 }
}
