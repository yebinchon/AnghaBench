
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ addr ;
typedef int CORE_ADDR ;


 int PBUFSIZ ;
 int sds_send (unsigned char*,int) ;

__attribute__((used)) static int
sds_insert_breakpoint (CORE_ADDR addr, char *contents_cache)
{
  int i, retlen;
  unsigned char *p, buf[PBUFSIZ];

  p = buf;
  *p++ = 16;
  *p++ = 0;
  *p++ = (int) (addr >> 24) & 0xff;
  *p++ = (int) (addr >> 16) & 0xff;
  *p++ = (int) (addr >> 8) & 0xff;
  *p++ = (int) (addr) & 0xff;

  retlen = sds_send (buf, p - buf);

  for (i = 0; i < 4; ++i)
    contents_cache[i] = buf[i + 2];

  return 0;
}
