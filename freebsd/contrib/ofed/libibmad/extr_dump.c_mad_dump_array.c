
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int sprintf (char*,char*,int) ;

void mad_dump_array(char *buf, int bufsz, void *val, int valsz)
{
 uint8_t *p = val, *e;
 char *s = buf;

 if (bufsz < valsz * 2)
  valsz = bufsz / 2;

 for (p = val, e = p + valsz; p < e; p++, s += 2)
  sprintf(s, "%02x", *p);
}
