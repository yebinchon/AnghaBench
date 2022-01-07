
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int os_snprintf (char*,int,char*,int const) ;
 scalar_t__ os_snprintf_error (int,int) ;

__attribute__((used)) static inline int _wpa_snprintf_hex(char *buf, size_t buf_size, const u8 *data,
        size_t len, int uppercase)
{
 size_t i;
 char *pos = buf, *end = buf + buf_size;
 int ret;
 if (buf_size == 0)
  return 0;
 for (i = 0; i < len; i++) {
  ret = os_snprintf(pos, end - pos, uppercase ? "%02X" : "%02x",
      data[i]);
  if (os_snprintf_error(end - pos, ret)) {
   end[-1] = '\0';
   return pos - buf;
  }
  pos += ret;
 }
 end[-1] = '\0';
 return pos - buf;
}
