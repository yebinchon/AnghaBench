
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _LC_LAST ;
 char** current_categories ;
 char* current_locale_string ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *
currentlocale(void)
{
 int i;

 (void)strcpy(current_locale_string, current_categories[1]);

 for (i = 2; i < _LC_LAST; ++i)
  if (strcmp(current_categories[1], current_categories[i])) {
   for (i = 2; i < _LC_LAST; ++i) {
    (void)strcat(current_locale_string, "/");
    (void)strcat(current_locale_string,
        current_categories[i]);
   }
   break;
  }
 return (current_locale_string);
}
