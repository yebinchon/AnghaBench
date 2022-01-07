
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* xmalloc (int) ;

char *
concat(const char *s1, const char *s2, const char *s3)
{
 int len = 1;
 char *s;
 if (s1)
  len += strlen(s1);
 if (s2)
  len += strlen(s2);
 if (s3)
  len += strlen(s3);
 s = xmalloc(len);
 s[0] = '\0';
 if (s1)
  strcat(s, s1);
 if (s2)
  strcat(s, s2);
 if (s3)
  strcat(s, s3);
 return s;
}
