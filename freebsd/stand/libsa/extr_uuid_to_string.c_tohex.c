
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void
tohex(char **buf, int len, uint32_t val)
{
 static const char *hexstr = "0123456789abcdef";
 char *walker = *buf;
 int i;

 for (i = len - 1; i >= 0; i--) {
  walker[i] = hexstr[val & 0xf];
  val >>= 4;
 }
 *buf = walker + len;
}
