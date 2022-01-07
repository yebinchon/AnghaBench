
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENCODING_LEN ;
 int LC_ALL ;
 int _LC_LAST ;
 char* __get_locale_env (int) ;
 char** current_categories ;
 char* currentlocale () ;
 int errno ;
 char* loadlocale (int) ;
 char** new_categories ;
 char** saved_categories ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char const*) ;

char *
setlocale(int category, const char *locale)
{
 int i, j, len, saverr;
 const char *env, *r;

 if (category < LC_ALL || category >= _LC_LAST) {
  errno = EINVAL;
  return (((void*)0));
 }
 if (locale == ((void*)0))
  return (category != LC_ALL ?
      current_categories[category] : currentlocale());




 for (i = 1; i < _LC_LAST; ++i)
  (void)strcpy(new_categories[i], current_categories[i]);




 if (!*locale) {
  if (category == LC_ALL) {
   for (i = 1; i < _LC_LAST; ++i) {
    env = __get_locale_env(i);
    if (strlen(env) > ENCODING_LEN) {
     errno = EINVAL;
     return (((void*)0));
    }
    (void)strcpy(new_categories[i], env);
   }
  } else {
   env = __get_locale_env(category);
   if (strlen(env) > ENCODING_LEN) {
    errno = EINVAL;
    return (((void*)0));
   }
   (void)strcpy(new_categories[category], env);
  }
 } else if (category != LC_ALL) {
  if (strlen(locale) > ENCODING_LEN) {
   errno = EINVAL;
   return (((void*)0));
  }
  (void)strcpy(new_categories[category], locale);
 } else {
  if ((r = strchr(locale, '/')) == ((void*)0)) {
   if (strlen(locale) > ENCODING_LEN) {
    errno = EINVAL;
    return (((void*)0));
   }
   for (i = 1; i < _LC_LAST; ++i)
    (void)strcpy(new_categories[i], locale);
  } else {
   for (i = 1; r[1] == '/'; ++r)
    ;
   if (!r[1]) {
    errno = EINVAL;
    return (((void*)0));
   }
   do {
    if (i == _LC_LAST)
     break;
    if ((len = r - locale) > ENCODING_LEN) {
     errno = EINVAL;
     return (((void*)0));
    }
    (void)strlcpy(new_categories[i], locale,
        len + 1);
    i++;
    while (*r == '/')
     r++;
    locale = r;
    while (*r && *r != '/')
     r++;
   } while (*locale);
   while (i < _LC_LAST) {
    (void)strcpy(new_categories[i],
        new_categories[i - 1]);
    i++;
   }
  }
 }

 if (category != LC_ALL)
  return (loadlocale(category));

 for (i = 1; i < _LC_LAST; ++i) {
  (void)strcpy(saved_categories[i], current_categories[i]);
  if (loadlocale(i) == ((void*)0)) {
   saverr = errno;
   for (j = 1; j < i; j++) {
    (void)strcpy(new_categories[j],
        saved_categories[j]);
    if (loadlocale(j) == ((void*)0)) {
     (void)strcpy(new_categories[j], "C");
     (void)loadlocale(j);
    }
   }
   errno = saverr;
   return (((void*)0));
  }
 }
 return (currentlocale());
}
