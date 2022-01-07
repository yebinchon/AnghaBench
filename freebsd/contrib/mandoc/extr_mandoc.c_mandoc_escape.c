
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mandoc_esc { ____Placeholder_mandoc_esc } mandoc_esc ;


 char const ASCII_HYPH ;
 int ESCAPE_BREAK ;
 int ESCAPE_DEVICE ;
 int ESCAPE_ERROR ;

 int ESCAPE_HLINE ;
 int ESCAPE_HORIZ ;
 int ESCAPE_IGNORE ;
 int ESCAPE_NOSPACE ;
 int ESCAPE_NUMBERED ;
 int ESCAPE_OVERSTRIKE ;
 int ESCAPE_SKIPCHAR ;

 int ESCAPE_UNDEF ;
 int ESCAPE_UNICODE ;
 int ESCAPE_UNSUPP ;
 int abort () ;
 int assert (int) ;
 int isdigit (unsigned char) ;
 int mandoc_font (char const*,int) ;
 int * strchr (char*,char const) ;
 size_t strlen (char const*) ;
 int strncmp (char const*,char*,int) ;
 scalar_t__ strspn (char const*,char*) ;

enum mandoc_esc
mandoc_escape(const char **end, const char **start, int *sz)
{
 const char *local_start;
 int local_sz, c, i;
 char term;
 enum mandoc_esc gly;






 if (((void*)0) == start)
  start = &local_start;
 if (((void*)0) == sz)
  sz = &local_sz;






 if (**end == 'E')
  ++*end;







 gly = ESCAPE_ERROR;
 *start = ++*end;
 *sz = 0;
 term = '\0';

 switch ((*start)[-1]) {





 case '(':
  gly = 128;
  *sz = 2;
  break;
 case '[':
  if (**start == ' ') {
   ++*end;
   return ESCAPE_ERROR;
  }
  gly = 128;
  term = ']';
  break;
 case 'C':
  if ('\'' != **start)
   return ESCAPE_ERROR;
  *start = ++*end;
  gly = 128;
  term = '\'';
  break;




 case '!':
 case '?':
  return ESCAPE_UNSUPP;
 case '%':
 case '&':
 case ')':
 case ',':
 case '/':
 case '^':
 case 'a':
 case 'd':
 case 'r':
 case 't':
 case 'u':
 case '{':
 case '|':
 case '}':
  return ESCAPE_IGNORE;
 case 'c':
  return ESCAPE_NOSPACE;
 case 'p':
  return ESCAPE_BREAK;







 case 'z':
  return ESCAPE_SKIPCHAR;





 case 'F':
 case 'f':
 case 'g':
 case 'k':
 case 'M':
 case 'm':
 case 'n':
 case 'O':
 case 'V':
 case 'Y':
  gly = (*start)[-1] == 'f' ? 129 : ESCAPE_IGNORE;
  switch (**start) {
  case '(':
   if ((*start)[-1] == 'O')
    gly = ESCAPE_ERROR;
   *start = ++*end;
   *sz = 2;
   break;
  case '[':
   if ((*start)[-1] == 'O')
    gly = (*start)[1] == '5' ?
        ESCAPE_UNSUPP : ESCAPE_ERROR;
   *start = ++*end;
   term = ']';
   break;
  default:
   if ((*start)[-1] == 'O') {
    switch (**start) {
    case '0':
     gly = ESCAPE_UNSUPP;
     break;
    case '1':
    case '2':
    case '3':
    case '4':
     break;
    default:
     gly = ESCAPE_ERROR;
     break;
    }
   }
   *sz = 1;
   break;
  }
  break;
 case '*':
  if (strncmp(*start, "(.T", 3) != 0)
   abort();
  gly = ESCAPE_DEVICE;
  *start = ++*end;
  *sz = 2;
  break;






 case 'A':
 case 'b':
 case 'D':
 case 'R':
 case 'X':
 case 'Z':
  gly = ESCAPE_IGNORE;

 case 'o':
  if (**start == '\0')
   return ESCAPE_ERROR;
  if (gly == ESCAPE_ERROR)
   gly = ESCAPE_OVERSTRIKE;
  term = **start;
  *start = ++*end;
  break;





 case 'h':
 case 'H':
 case 'L':
 case 'l':
 case 'S':
 case 'v':
 case 'x':
  if (strchr(" %&()*+-./0123456789:<=>", **start)) {
   if ('\0' != **start)
    ++*end;
   return ESCAPE_ERROR;
  }
  switch ((*start)[-1]) {
  case 'h':
   gly = ESCAPE_HORIZ;
   break;
  case 'l':
   gly = ESCAPE_HLINE;
   break;
  default:
   gly = ESCAPE_IGNORE;
   break;
  }
  term = **start;
  *start = ++*end;
  break;





 case 'N':
  if ('\0' == **start)
   return ESCAPE_ERROR;
  (*end)++;
  if (isdigit((unsigned char)**start)) {
   *sz = 1;
   return ESCAPE_IGNORE;
  }
  (*start)++;
  while (isdigit((unsigned char)**end))
   (*end)++;
  *sz = *end - *start;
  if ('\0' != **end)
   (*end)++;
  return ESCAPE_NUMBERED;




 case 's':
  gly = ESCAPE_IGNORE;


  if ('+' == **end || '-' == **end || ASCII_HYPH == **end)
   *start = ++*end;

  switch (**end) {
  case '(':
   *start = ++*end;
   *sz = 2;
   break;
  case '[':
   *start = ++*end;
   term = ']';
   break;
  case '\'':
   *start = ++*end;
   term = '\'';
   break;
  case '3':
  case '2':
  case '1':
   *sz = (*end)[-1] == 's' &&
       isdigit((unsigned char)(*end)[1]) ? 2 : 1;
   break;
  default:
   *sz = 1;
   break;
  }

  break;





 case ' ':
 case '\'':
 case '-':
 case '.':
 case '0':
 case ':':
 case '_':
 case '`':
 case 'e':
 case '~':
  gly = 128;

 default:
  if (gly == ESCAPE_ERROR)
   gly = ESCAPE_UNDEF;
  *start = --*end;
  *sz = 1;
  break;
 }






 if ('\0' != term) {
  while (**end != term) {
   switch (**end) {
   case '\0':
    return ESCAPE_ERROR;
   case '\\':
    (*end)++;
    if (ESCAPE_ERROR ==
        mandoc_escape(end, ((void*)0), ((void*)0)))
     return ESCAPE_ERROR;
    break;
   default:
    (*end)++;
    break;
   }
  }
  *sz = (*end)++ - *start;







  if (gly == 128 && *sz == 1 && **start != '-')
   return ESCAPE_ERROR;
 } else {
  assert(*sz > 0);
  if ((size_t)*sz > strlen(*start))
   return ESCAPE_ERROR;
  *end += *sz;
 }



 switch (gly) {
 case 129:
  gly = mandoc_font(*start, *sz);
  break;
 case 128:
  if (**start == 'c') {
   if (*sz < 6 || *sz > 7 ||
       strncmp(*start, "char", 4) != 0 ||
       (int)strspn(*start + 4, "0123456789") + 4 < *sz)
    break;
   c = 0;
   for (i = 4; i < *sz; i++)
    c = 10 * c + ((*start)[i] - '0');
   if (c < 0x21 || (c > 0x7e && c < 0xa0) || c > 0xff)
    break;
   *start += 4;
   *sz -= 4;
   gly = ESCAPE_NUMBERED;
   break;
  }







  if (**start != 'u' || *sz < 5 || *sz > 7)
   break;
  if (*sz == 7 && ((*start)[1] != '1' || (*start)[2] != '0'))
   break;
  if (*sz == 6 && (*start)[1] == '0')
   break;
  if (*sz == 5 && (*start)[1] == 'D' &&
      strchr("89ABCDEF", (*start)[2]) != ((void*)0))
   break;
  if ((int)strspn(*start + 1, "0123456789ABCDEFabcdef")
      + 1 == *sz)
   gly = ESCAPE_UNICODE;
  break;
 default:
  break;
 }

 return gly;
}
