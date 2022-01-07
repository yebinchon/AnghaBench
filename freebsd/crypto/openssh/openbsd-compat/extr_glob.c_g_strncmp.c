
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char const Char ;



__attribute__((used)) static int
g_strncmp(const Char *s1, const char *s2, size_t n)
{
 int rv = 0;

 while (n--) {
  rv = *(Char *)s1 - *(const unsigned char *)s2++;
  if (rv)
   break;
  if (*s1++ == '\0')
   break;
 }
 return rv;
}
