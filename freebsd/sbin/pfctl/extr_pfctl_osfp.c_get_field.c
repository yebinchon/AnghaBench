
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;

char *
get_field(char **line, size_t *len, int *fieldlen)
{
 char *ret, *ptr = *line;
 size_t plen = *len;


 while (plen && isspace(*ptr)) {
  plen--;
  ptr++;
 }
 ret = ptr;
 *fieldlen = 0;

 for (; plen > 0 && *ptr != ':'; plen--, ptr++)
  (*fieldlen)++;
 if (plen) {
  *line = ptr + 1;
  *len = plen - 1;
 } else {
  *len = 0;
 }
 while (*fieldlen && isspace(ret[*fieldlen - 1]))
  (*fieldlen)--;
 return (ret);
}
