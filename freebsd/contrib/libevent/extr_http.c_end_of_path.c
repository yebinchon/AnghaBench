
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum uri_part { ____Placeholder_uri_part } uri_part ;


 scalar_t__ CHAR_IS_UNRESERVED (char) ;
 unsigned int EVHTTP_URI_NONCONFORMANT ;
 scalar_t__ EVUTIL_ISXDIGIT_ (char) ;



 int SUBDELIMS ;
 scalar_t__ strchr (int ,char) ;
 int strlen (char*) ;

__attribute__((used)) static char *
end_of_path(char *cp, enum uri_part part, unsigned flags)
{
 if (flags & EVHTTP_URI_NONCONFORMANT) {





  switch (part) {
  case 129:
   while (*cp && *cp != '#' && *cp != '?')
    ++cp;
   break;
  case 128:
   while (*cp && *cp != '#')
    ++cp;
   break;
  case 130:
   cp += strlen(cp);
   break;
  };
  return cp;
 }

 while (*cp) {
  if (CHAR_IS_UNRESERVED(*cp) ||
      strchr(SUBDELIMS, *cp) ||
      *cp == ':' || *cp == '@' || *cp == '/')
   ++cp;
  else if (*cp == '%' && EVUTIL_ISXDIGIT_(cp[1]) &&
      EVUTIL_ISXDIGIT_(cp[2]))
   cp += 3;
  else if (*cp == '?' && part != 129)
   ++cp;
  else
   return cp;
 }
 return cp;
}
