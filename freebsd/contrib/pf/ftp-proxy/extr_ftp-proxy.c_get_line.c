
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MAX_LINE ;
 int bcopy (char*,char*,size_t) ;
 char* linebuf ;
 size_t linelen ;

int
get_line(char *buf, size_t *valid)
{
 size_t i;

 if (*valid > MAX_LINE)
  return (-1);


 for (i = 0; i < *valid; i++) {
  linebuf[i] = buf[i];
  if (buf[i] == '\0')
   return (-1);
  if (buf[i] == '\n')
   break;
 }

 if (i == *valid) {

  linebuf[0] = '\0';
  linelen = 0;
  if (i < MAX_LINE)
   return (0);
  return (-1);
 }

 linelen = i + 1;
 linebuf[linelen] = '\0';
 *valid -= linelen;


 if (*valid != 0)
  bcopy(buf + linelen, buf, *valid);

 return ((int)linelen);
}
