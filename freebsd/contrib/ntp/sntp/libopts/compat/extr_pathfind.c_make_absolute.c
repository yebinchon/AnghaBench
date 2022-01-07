
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (scalar_t__) ;
 int strcpy (char*,char const*) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *
make_absolute( char const * string, char const * dot_path )
{
    char * result;
    int result_len;

    if (!dot_path || *string == '/') {
        result = strdup( string );
 if (result == ((void*)0)) {
 return ((void*)0);
 }
    } else {
        if (dot_path && dot_path[0]) {
            result = malloc( 2 + strlen( dot_path ) + strlen( string ) );
  if (result == ((void*)0)) {
  return ((void*)0);
  }
            strcpy( result, dot_path );
            result_len = (int)strlen(result);
            if (result[result_len - 1] != '/') {
                result[result_len++] = '/';
                result[result_len] = '\0';
            }
        } else {
            result = malloc( 3 + strlen( string ) );
  if (result == ((void*)0)) {
  return ((void*)0);
  }
            result[0] = '.'; result[1] = '/'; result[2] = '\0';
            result_len = 2;
        }

        strcpy( result + result_len, string );
    }

    return result;
}
