
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIGIT (char const) ;
 int isxdigit (char const) ;
 char* strdup (char const*) ;

char *
backslash(const char *str)
{
 char *new_str;
 int seenbs = 0;
 int i = 0;

 if ((new_str = strdup(str)) == ((void*)0))
  return ((void*)0);

 while (*str) {
  if (seenbs) {
   seenbs = 0;
   switch (*str) {
   case '\\':
    new_str[i++] = '\\';
    str++;
    break;


   case '\'':
   case '"':
   case '$':
    new_str[i++] = '\\';
    new_str[i++] = *str++;
    break;

   case 'b':
    new_str[i++] = '\b';
    str++;
    break;

   case 'f':
    new_str[i++] = '\f';
    str++;
    break;

   case 'r':
    new_str[i++] = '\r';
    str++;
    break;

   case 'n':
    new_str[i++] = '\n';
    str++;
    break;

   case 's':
    new_str[i++] = ' ';
    str++;
    break;

   case 't':
    new_str[i++] = '\t';
    str++;
    break;

   case 'v':
    new_str[i++] = '\13';
    str++;
    break;

   case 'z':
    str++;
    break;

   case '0': case '1': case '2': case '3': case '4':
   case '5': case '6': case '7': case '8': case '9': {
    char val;


    if (*str >= '0' && *str <= '3' &&
        *(str + 1) >= '0' && *(str + 1) <= '7' &&
        *(str + 2) >= '0' && *(str + 2) <= '7') {

     val = (DIGIT(*str) << 6) + (DIGIT(*(str + 1)) << 3) +
         DIGIT(*(str + 2));



     new_str[i++] = val;
     str += 3;
     break;
    }





    if (*str == '0' &&
        (*(str + 1) == 'x' || *(str + 1) == 'X') &&
        isxdigit(*(str + 2))) {
     val = DIGIT(*(str + 2));
     if (isxdigit(*(str + 3))) {
      val = (val << 4) + DIGIT(*(str + 3));
      str += 4;
     }
     else
      str += 3;

     new_str[i++] = val;
     break;
    }
   }
    break;

   default:
    new_str[i++] = *str++;
    break;
   }
  }
  else {
   if (*str == '\\') {
    seenbs = 1;
    str++;
   }
   else
    new_str[i++] = *str++;
  }
 }

 if (seenbs) {



  new_str[i++] = '\\';
 }
 new_str[i] = '\0';
 return new_str;
}
