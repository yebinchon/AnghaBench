
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CATEGORY_LEN ;
 int ENAMETOOLONG ;
 scalar_t__ ENCODING_LEN ;
 int ENOMEM ;
 scalar_t__ PATH_MAX ;
 int * _PATH_LOCALE ;
 int * _PathLocale ;
 scalar_t__ errno ;
 char* getenv (char*) ;
 int issetugid () ;
 int * strdup (char*) ;
 scalar_t__ strlen (char*) ;

int
__detect_path_locale(void)
{
 if (_PathLocale == ((void*)0)) {
  char *p = getenv("PATH_LOCALE");

  if (p != ((void*)0) && !issetugid()) {
   if (strlen(p) + 1 + ENCODING_LEN +
       1 + CATEGORY_LEN >= PATH_MAX)
    return (ENAMETOOLONG);
   _PathLocale = strdup(p);
   if (_PathLocale == ((void*)0))
    return (errno == 0 ? ENOMEM : errno);
  } else
   _PathLocale = _PATH_LOCALE;
 }
 return (0);
}
