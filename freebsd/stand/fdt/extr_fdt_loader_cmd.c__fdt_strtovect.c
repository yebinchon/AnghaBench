
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 int cpu_to_fdt32 (int ) ;
 scalar_t__ isxdigit (char const) ;
 int strlen (char const*) ;
 scalar_t__ strtol (char const*,int *,scalar_t__) ;

__attribute__((used)) static int
_fdt_strtovect(const char *str, void *cellbuf, int lim, unsigned char cellsize,
    uint8_t base)
{
 const char *buf = str;
 const char *end = str + strlen(str) - 2;
 uint32_t *u32buf = ((void*)0);
 uint8_t *u8buf = ((void*)0);
 int cnt = 0;

 if (cellsize == sizeof(uint32_t))
  u32buf = (uint32_t *)cellbuf;
 else
  u8buf = (uint8_t *)cellbuf;

 if (lim == 0)
  return (0);

 while (buf < end) {


  while (!isxdigit(*buf) && buf < end)
   buf++;

  if (u32buf != ((void*)0))
   u32buf[cnt] =
       cpu_to_fdt32((uint32_t)strtol(buf, ((void*)0), base));

  else
   u8buf[cnt] = (uint8_t)strtol(buf, ((void*)0), base);

  if (cnt + 1 <= lim - 1)
   cnt++;
  else
   break;
  buf++;

  while ((isxdigit(*buf) || *buf == 'x') && buf < end)
   buf++;
 }
 return (cnt);
}
