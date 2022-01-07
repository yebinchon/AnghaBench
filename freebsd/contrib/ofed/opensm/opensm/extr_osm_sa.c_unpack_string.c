
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static int unpack_string(char *p, uint8_t * buf, unsigned len)
{
 char *q = p;
 char delim = ' ';

 if (*q == '\'' || *q == '\"')
  delim = *q++;
 while (--len && *q && *q != delim)
  *buf++ = *q++;
 *buf = '\0';
 if (*q == delim && delim != ' ')
  q++;
 return (int)(q - p);
}
