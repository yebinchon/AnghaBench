
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int isalnum (int ) ;

__attribute__((used)) static int
xauth_valid_string(const char *s)
{
 size_t i;

 for (i = 0; s[i] != '\0'; i++) {
  if (!isalnum((u_char)s[i]) &&
      s[i] != '.' && s[i] != ':' && s[i] != '/' &&
      s[i] != '-' && s[i] != '_')
   return 0;
 }
 return 1;
}
