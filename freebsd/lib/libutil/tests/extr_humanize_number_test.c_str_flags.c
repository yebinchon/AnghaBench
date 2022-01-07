
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; char* name; } ;


 int MAX_STR_FLAGS_RESULT ;
 TYPE_1__* flags ;
 char* malloc (int ) ;
 char* separator ;
 int strlcat (char*,char*,int ) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *
str_flags(int hn_flags, char *noFlags) {
 size_t i;
 char * result;

 result = malloc(MAX_STR_FLAGS_RESULT);
 result[0] = '\0';

 for (i = 0; i < sizeof flags / sizeof *flags; i++) {
  if (hn_flags & flags[i].value) {
   if (*result != 0)
    strlcat(result, separator,
        MAX_STR_FLAGS_RESULT);
   strlcat(result, flags[i].name, MAX_STR_FLAGS_RESULT);
  }
 }

 if (strlen(result) == 0)
  strlcat(result, noFlags, MAX_STR_FLAGS_RESULT);
 return result;
}
