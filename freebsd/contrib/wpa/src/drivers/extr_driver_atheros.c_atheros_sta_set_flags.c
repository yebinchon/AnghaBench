
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned int WPA_STA_AUTHORIZED ;
 int atheros_set_sta_authorized (void*,int const*,int) ;

__attribute__((used)) static int
atheros_sta_set_flags(void *priv, const u8 *addr,
        unsigned int total_flags, unsigned int flags_or,
        unsigned int flags_and)
{

 if (flags_or & WPA_STA_AUTHORIZED)
  return atheros_set_sta_authorized(priv, addr, 1);
 if (!(flags_and & WPA_STA_AUTHORIZED))
  return atheros_set_sta_authorized(priv, addr, 0);
 return 0;
}
