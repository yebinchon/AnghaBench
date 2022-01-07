
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int wpa_ether_send (void*,int const*,int ,int const*,size_t) ;

__attribute__((used)) static int _wpa_ether_send(void *wpa_s, const u8 *dest, u16 proto,
      const u8 *buf, size_t len)
{
 return wpa_ether_send(wpa_s, dest, proto, buf, len);
}
