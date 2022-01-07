
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
_conv_num(const unsigned char **buf, int *dest, int llim, int ulim)
{
 int result = 0;
 int rulim = ulim;

 if (**buf < '0' || **buf > '9')
  return (0);


 do {
  result *= 10;
  result += *(*buf)++ - '0';
  rulim /= 10;
 } while ((result * 10 <= ulim) && rulim && **buf >= '0' && **buf <= '9');

 if (result < llim || result > ulim)
  return (0);

 *dest = result;
 return (1);
}
