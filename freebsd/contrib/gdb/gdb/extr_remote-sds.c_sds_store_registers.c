
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PBUFSIZ ;
 void** deprecated_registers ;
 int sds_send (unsigned char*,int) ;
 int * sprs ;

__attribute__((used)) static void
sds_store_registers (int regno)
{
  unsigned char *p, buf[PBUFSIZ];
  int i;


  p = buf;
  *p++ = 19;
  *p++ = 1;
  *p++ = 0;
  *p++ = 0;
  for (i = 0; i < 4 * 6; i++)
    *p++ = deprecated_registers[i + 4 * 32 + 8 * 32];
  for (i = 0; i < 4 * 1; i++)
    *p++ = 0;
  for (i = 0; i < 4 * 4; i++)
    *p++ = sprs[i];

  sds_send (buf, p - buf);


  p = buf;
  *p++ = 19;
  *p++ = 2;
  *p++ = 0;
  *p++ = 0;
  for (i = 0; i < 4 * 32; i++)
    *p++ = deprecated_registers[i];

  sds_send (buf, p - buf);

}
