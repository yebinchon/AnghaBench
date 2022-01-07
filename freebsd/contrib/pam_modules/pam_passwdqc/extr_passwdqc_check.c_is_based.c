
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int match_length; } ;
typedef TYPE_1__ passwdqc_params_t ;


 int clean (char*) ;
 scalar_t__ is_simple (TYPE_1__*,char*) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;
 scalar_t__ strstr (char const*,char const*) ;

__attribute__((used)) static int is_based(passwdqc_params_t *params,
    const char *haystack, const char *needle, const char *original)
{
 char *scratch;
 int length;
 int i, j;
 const char *p;
 int match;

 if (!params->match_length)
  return 0;

 if (params->match_length < 0)
  return 1;

 if (strstr(haystack, needle))
  return 1;

 scratch = ((void*)0);

 length = strlen(needle);
 for (i = 0; i <= length - params->match_length; i++)
 for (j = params->match_length; i + j <= length; j++) {
  match = 0;
  for (p = haystack; *p; p++)
  if (*p == needle[i] && !strncmp(p, &needle[i], j)) {
   match = 1;
   if (!scratch) {
    if (!(scratch = malloc(length + 1)))
     return 1;
   }
   memcpy(scratch, original, i);
   memcpy(&scratch[i], &original[i + j],
       length + 1 - (i + j));
   if (is_simple(params, scratch)) {
    clean(scratch);
    return 1;
   }
  }
  if (!match) break;
 }

 clean(scratch);

 return 0;
}
