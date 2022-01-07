
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eui64 {int dummy; } ;


 scalar_t__ eui64_aton (char*,struct eui64*) ;
 int free (char*) ;
 char* strdup (char const*) ;
 size_t strlcpy (char*,char*,size_t) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
eui64_line(const char *l, struct eui64 *e, char *hostname, size_t len)
{
 char *line, *linehead, *cur;

 linehead = strdup(l);
 if (linehead == ((void*)0))
  return (-1);
 line = linehead;


 while ((cur = strsep(&line, " \t\r\n")) != ((void*)0)) {
  if (*cur != '\0') {
   if (eui64_aton(cur, e) == 0)
    break;
   else
    goto bad;
  }
 }


 while ((cur = strsep(&line, " \t\r\n")) != ((void*)0)) {
  if (*cur != '\0') {
   if (strlcpy(hostname, cur, len) <= len)
    break;
   else
    goto bad;
  }
 }


 while ((cur = strsep(&line, " \t\r\n")) != ((void*)0)) {
  if (*cur == '#')
   break;
  if (*cur != '\0')
   goto bad;
 }

 free(linehead);
 return (0);

bad:
 free(linehead);
 return (-1);
}
