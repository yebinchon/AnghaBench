
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISLWS (char const) ;
 int SKIPLWS (char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,size_t) ;

__attribute__((used)) static const char *
match_token(const char **buf, const char *token)
{
 const char *p, *orig;
 size_t tlen;

 tlen = strlen(token);
 p = *buf;
 SKIPLWS(p);
 orig = p;
 if (strncasecmp(p, token, tlen) != 0)
  return ((void*)0);
 p += tlen;
 if (*p != '\0' && !ISLWS(*p))
  return ((void*)0);
 SKIPLWS(p);
 orig = *buf;
 *buf = p;
 return orig;
}
