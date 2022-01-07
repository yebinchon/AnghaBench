
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int txt ;


 int wpa_snprintf_hex (char*,int,int const*,int) ;

__attribute__((used)) static const char * algo_agility_txt(const u8 *algo_agility)
{
 static char txt[4 * 2 + 1];

 wpa_snprintf_hex(txt, sizeof(txt), algo_agility, 4);
 return txt;
}
