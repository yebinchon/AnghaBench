
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__** components; } ;
struct TYPE_3__ {char* locale; } ;


 int EINVAL ;






 int _LDP_ERROR ;
 int __collate_load_tables (char const*) ;
 int __detect_path_locale () ;
 int __messages_load_locale (char const*) ;
 int __monetary_load_locale (char const*) ;
 int __numeric_load_locale (char const*) ;
 int __time_load_locale (char const*) ;
 int __wrap_setrunelocale (char const*) ;
 TYPE_2__ __xlocale_global_locale ;
 char** current_categories ;
 int errno ;
 char** new_categories ;
 int * strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *
loadlocale(int category)
{
 char *new = new_categories[category];
 char *old = current_categories[category];
 int (*func) (const char *);
 int saved_errno;

 if ((new[0] == '.' &&
     (new[1] == '\0' || (new[1] == '.' && new[2] == '\0'))) ||
     strchr(new, '/') != ((void*)0)) {
  errno = EINVAL;
  return (((void*)0));
 }
 saved_errno = errno;
 errno = __detect_path_locale();
 if (errno != 0)
  return (((void*)0));
 errno = saved_errno;

 switch (category) {
 case 132:
  func = __wrap_setrunelocale;
  break;
 case 133:
  func = __collate_load_tables;
  break;
 case 128:
  func = __time_load_locale;
  break;
 case 129:
  func = __numeric_load_locale;
  break;
 case 130:
  func = __monetary_load_locale;
  break;
 case 131:
  func = __messages_load_locale;
  break;
 default:
  errno = EINVAL;
  return (((void*)0));
 }

 if (strcmp(new, old) == 0)
  return (old);

 if (func(new) != _LDP_ERROR) {
  (void)strcpy(old, new);
  (void)strcpy(__xlocale_global_locale.components[category-1]->locale, new);
  return (old);
 }

 return (((void*)0));
}
