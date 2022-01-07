
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char int8_t ;



void
ata_btrim(int8_t *buf, int len)
{
 int8_t *ptr;

 for (ptr = buf; ptr < buf+len; ++ptr)
  if (!*ptr || *ptr == '_')
   *ptr = ' ';
 for (ptr = buf + len - 1; ptr >= buf && *ptr == ' '; --ptr)
  *ptr = 0;
}
