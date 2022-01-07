
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
openpam_strlset(char *str, int ch, size_t size)
{
 size_t len;

 for (len = 0; *str && size > 1; ++len, --size)
  *str++ = ch;
 *str = '\0';
 return (++len);
}
