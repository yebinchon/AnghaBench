
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 scalar_t__ errno ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;

int
replaceall(char *source, const char *find, const char *replace)
{
 char *p;
 char *t;
 char *temp;
 size_t flen;
 size_t rlen;
 size_t slen;
 uint32_t n = 0;

 errno = 0;


 if (source == ((void*)0))
  return (0);
 if (find == ((void*)0))
  return (strlen(source));


 slen = strlen(source);
 flen = strlen(find);
 rlen = replace ? strlen(replace) : 0;


 if (slen == 0 || flen == 0 || slen < flen)
  return (slen);


 if (rlen > flen) {
  temp = malloc(slen + 1);
  if (temp == ((void*)0))
   return (-1);
  memcpy(temp, source, slen + 1);
 } else
  temp = source;


 p = source; t = temp;

 while (*t != '\0') {
  if (strncmp(t, find, flen) == 0) {

   for (n = 0; replace && replace[n]; n++)
    *p++ = replace[n];
   t += flen;
  } else
   *p++ = *t++;
 }


 *p = '\0';


 if (temp != source)
  free(temp);


 return (strlen(source));
}
