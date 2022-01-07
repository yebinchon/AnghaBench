
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct LEXICON {char* name; size_t abbrev; int value; int type; } ;
typedef int buff ;


 struct LEXICON* TimeWords ;
 scalar_t__ isalnum (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ isupper (unsigned char) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,size_t) ;
 int tUNUMBER ;
 char tolower (unsigned char) ;

__attribute__((used)) static int
nexttoken(const char **in, time_t *value)
{
 char c;
 char buff[64];

 for ( ; ; ) {
  while (isspace((unsigned char)**in))
   ++*in;


  if (**in == '(') {
   int Count = 0;
   do {
    c = *(*in)++;
    if (c == '\0')
     return c;
    if (c == '(')
     Count++;
    else if (c == ')')
     Count--;
   } while (Count > 0);
   continue;
  }



  {
   const char *src = *in;
   const struct LEXICON *tp;
   unsigned i = 0;


   while (*src != '\0'
       && (isalnum((unsigned char)*src) || *src == '.')
       && i < sizeof(buff)-1) {
    if (*src != '.') {
     if (isupper((unsigned char)*src))
      buff[i++] = tolower((unsigned char)*src);
     else
      buff[i++] = *src;
    }
    src++;
   }
   buff[i] = '\0';






   for (tp = TimeWords; tp->name; tp++) {
    size_t abbrev = tp->abbrev;
    if (abbrev == 0)
     abbrev = strlen(tp->name);
    if (strlen(buff) >= abbrev
        && strncmp(tp->name, buff, strlen(buff))
         == 0) {

     *in = src;

     *value = tp->value;
     return tp->type;
    }
   }
  }






  if (isdigit((unsigned char)(c = **in))) {
   for (*value = 0; isdigit((unsigned char)(c = *(*in)++)); )
    *value = 10 * *value + c - '0';
   (*in)--;
   return (tUNUMBER);
  }

  return *(*in)++;
 }
}
