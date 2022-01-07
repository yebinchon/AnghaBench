
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t apr_size_t ;


 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,size_t) ;

__attribute__((used)) static const char *
has_scheme_of(const char * const *schemes, const char *url)
{
  apr_size_t len;

  for ( ; *schemes != ((void*)0); ++schemes)
    {
      const char *scheme = *schemes;
      len = strlen(scheme);



      if (strncasecmp(scheme, url, len) == 0 &&
          (url[len] == ':' || url[len] == '+'))
        return scheme;
    }

  return ((void*)0);
}
