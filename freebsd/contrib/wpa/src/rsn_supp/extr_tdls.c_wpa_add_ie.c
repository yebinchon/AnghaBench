
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int os_memcpy (int *,int const*,size_t) ;

__attribute__((used)) static u8 * wpa_add_ie(u8 *pos, const u8 *ie, size_t ie_len)
{
 os_memcpy(pos, ie, ie_len);
 return pos + ie_len;
}
