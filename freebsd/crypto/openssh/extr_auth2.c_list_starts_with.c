
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MATCH_BOTH ;
 int MATCH_METHOD ;
 int MATCH_NONE ;
 int MATCH_PARTIAL ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static int
list_starts_with(const char *methods, const char *method,
    const char *submethod)
{
 size_t l = strlen(method);
 int match;
 const char *p;

 if (strncmp(methods, method, l) != 0)
  return MATCH_NONE;
 p = methods + l;
 match = MATCH_METHOD;
 if (*p == ':') {
  if (!submethod)
   return MATCH_PARTIAL;
  l = strlen(submethod);
  p += 1;
  if (strncmp(submethod, p, l))
   return MATCH_NONE;
  p += l;
  match = MATCH_BOTH;
 }
 if (*p != ',' && *p != '\0')
  return MATCH_NONE;
 return match;
}
