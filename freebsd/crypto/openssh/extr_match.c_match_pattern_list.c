
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef int u_char ;
typedef int sub ;


 scalar_t__ isupper (int ) ;
 scalar_t__ match_pattern (char const*,char*) ;
 size_t strlen (char const*) ;
 char const tolower (int ) ;

int
match_pattern_list(const char *string, const char *pattern, int dolower)
{
 char sub[1024];
 int negated;
 int got_positive;
 u_int i, subi, len = strlen(pattern);

 got_positive = 0;
 for (i = 0; i < len;) {

  if (pattern[i] == '!') {
   negated = 1;
   i++;
  } else
   negated = 0;





  for (subi = 0;
      i < len && subi < sizeof(sub) - 1 && pattern[i] != ',';
      subi++, i++)
   sub[subi] = dolower && isupper((u_char)pattern[i]) ?
       tolower((u_char)pattern[i]) : pattern[i];

  if (subi >= sizeof(sub) - 1)
   return 0;


  if (i < len && pattern[i] == ',')
   i++;


  sub[subi] = '\0';


  if (match_pattern(string, sub)) {
   if (negated)
    return -1;
   else
    got_positive = 1;
  }
 }





 return got_positive;
}
