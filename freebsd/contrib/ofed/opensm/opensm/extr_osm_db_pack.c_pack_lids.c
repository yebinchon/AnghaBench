
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static inline void pack_lids(uint16_t min_lid, uint16_t max_lid, char *lid_str)
{
 sprintf(lid_str, "0x%04x 0x%04x", min_lid, max_lid);
}
