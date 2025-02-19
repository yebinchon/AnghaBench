
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _nc_STRCAT (char*,char const*,size_t) ;
 int _nc_STRCPY (char*,char*,size_t) ;
 int comma_is_needed (char*) ;
 int failed (char*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 size_t strlen (char const*) ;
 char* trimmed_tab_list (char const*) ;

__attribute__((used)) static const char *
add_to_tab_list(char **append, const char *value)
{
    char *result = *append;
    char *copied = trimmed_tab_list(value);

    if (copied != 0 && *copied != '\0') {
 const char *comma = ",";
 size_t need = 1 + strlen(copied);

 if (*copied == ',')
     comma = "";
 else if (!comma_is_needed(*append))
     comma = "";

 need += strlen(comma);
 if (*append != 0)
     need += strlen(*append);

 result = malloc(need);
 if (result == 0)
     failed("add_to_tab_list");

 *result = '\0';
 if (*append != 0) {
     _nc_STRCPY(result, *append, need);
     free(*append);
 }
 _nc_STRCAT(result, comma, need);
 _nc_STRCAT(result, copied, need);

 *append = result;
    }
    return result;
}
