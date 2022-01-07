
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int os_snprintf (char*,size_t,char*) ;
 scalar_t__ os_snprintf_error (size_t,int) ;
 scalar_t__ wpa_snprintf_hex (char*,size_t,int const*,int) ;

__attribute__((used)) static size_t hostapd_write_ht_mcs_bitmask(char *buf, size_t buflen,
        size_t curr_len, const u8 *mcs_set)
{
 int ret;
 size_t len = curr_len;

 ret = os_snprintf(buf + len, buflen - len,
     "ht_mcs_bitmask=");
 if (os_snprintf_error(buflen - len, ret))
  return len;
 len += ret;


 len += wpa_snprintf_hex(buf + len, buflen - len, mcs_set, 10);

 ret = os_snprintf(buf + len, buflen - len, "\n");
 if (os_snprintf_error(buflen - len, ret))
  return curr_len;
 len += ret;

 return len;
}
