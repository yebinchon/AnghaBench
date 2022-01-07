
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncpy (char*,void*,int) ;

void mad_dump_nodedesc(char *buf, int bufsz, void *val, int valsz)
{
 strncpy(buf, val, bufsz);

 if (valsz < bufsz)
  buf[valsz] = 0;
}
