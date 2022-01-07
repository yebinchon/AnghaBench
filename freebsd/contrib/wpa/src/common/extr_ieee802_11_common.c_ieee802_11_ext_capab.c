
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 unsigned int const BIT (unsigned int) ;

int ieee802_11_ext_capab(const u8 *ie, unsigned int capab)
{
 if (!ie || ie[1] <= capab / 8)
  return 0;
 return !!(ie[2 + capab / 8] & BIT(capab % 8));
}
