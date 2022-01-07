
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int snprintf (char*,int,char*,int) ;

void mad_dump_bitfield(char *buf, int bufsz, void *val, int valsz)
{
 snprintf(buf, bufsz, "0x%x", *(uint32_t *) val);
}
