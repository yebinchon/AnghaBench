
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char const) ;

__attribute__((used)) static int
roff_evalstrcond(const char *v, int *pos)
{
 const char *s1, *s2, *s3;
 int match;

 match = 0;
 s1 = v + *pos;
 s2 = s1 + 1;
 s3 = strchr(s2, *s1);

 if (((void*)0) == s3)
  goto out;

 while ('\0' != *++s3) {
  if (*s2 != *s3) {
   s3 = strchr(s3, *s1);
   break;
  }
  if (*s3 == *s1) {
   match = 1;
   break;
  }
  s2++;
 }

out:
 if (((void*)0) == s3)
  s3 = strchr(s2, '\0');
 else if (*s3 != '\0')
  s3++;
 *pos = s3 - v;
 return match;
}
