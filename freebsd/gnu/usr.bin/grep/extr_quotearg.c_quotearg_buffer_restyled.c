
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct quoting_options {int* quote_these_too; } ;
typedef int mbstate_t ;
typedef enum quoting_style { ____Placeholder_quoting_style } quoting_style ;



 unsigned char INT_BITS ;
 int ISPRINT (unsigned char) ;
 int MB_CUR_MAX ;
 int N_ (char*) ;
 int STORE (char const) ;



 char* gettext_quote (int ,int) ;
 int iswprint (int ) ;

 size_t mbrtowc (int *,char const*,int ,int *) ;
 int mbsinit (int *) ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 int memset (int *,int ,int) ;


 size_t strlen (char const*) ;

__attribute__((used)) static size_t
quotearg_buffer_restyled (char *buffer, size_t buffersize,
     char const *arg, size_t argsize,
     enum quoting_style quoting_style,
     struct quoting_options const *o)
{
  size_t i;
  size_t len = 0;
  char const *quote_string = 0;
  size_t quote_string_len = 0;
  int backslash_escapes = 0;
  int unibyte_locale = MB_CUR_MAX == 1;
  switch (quoting_style)
    {
    case 133:
      do { if (len < buffersize) buffer[len] = ('"'); len++; } while (0);
      backslash_escapes = 1;
      quote_string = "\"";
      quote_string_len = 1;
      break;

    case 131:
      backslash_escapes = 1;
      break;

    case 130:
    case 132:
      {
 char const *left = gettext_quote (N_("`"), quoting_style);
 char const *right = gettext_quote (N_("'"), quoting_style);
 for (quote_string = left; *quote_string; quote_string++)
   do { if (len < buffersize) buffer[len] = (*quote_string); len++; } while (0);
 backslash_escapes = 1;
 quote_string = right;
 quote_string_len = strlen (quote_string);
      }
      break;

    case 129:
      do { if (len < buffersize) buffer[len] = ('\''); len++; } while (0);
      quote_string = "'";
      quote_string_len = 1;
      break;

    default:
      break;
    }

  for (i = 0; ! (argsize == (size_t) -1 ? arg[i] == '\0' : i == argsize); i++)
    {
      unsigned char c;
      unsigned char esc;

      if (backslash_escapes
   && quote_string_len
   && i + quote_string_len <= argsize
   && memcmp (arg + i, quote_string, quote_string_len) == 0)
 do { if (len < buffersize) buffer[len] = ('\\'); len++; } while (0);

      c = arg[i];
      switch (c)
 {
 case '?':
   switch (quoting_style)
     {
     case 128:
       goto use_shell_always_quoting_style;

     case 133:
       if (i + 2 < argsize && arg[i + 1] == '?')
  switch (arg[i + 2])
    {
    case '!': case '\'':
    case '(': case ')': case '-': case '/':
    case '<': case '=': case '>':


      i += 2;
      c = arg[i + 2];
      do { if (len < buffersize) buffer[len] = ('?'); len++; } while (0);
      do { if (len < buffersize) buffer[len] = ('\\'); len++; } while (0);
      do { if (len < buffersize) buffer[len] = ('?'); len++; } while (0);
      break;
    }
       break;

     default:
       break;
     }
   break;

 case 134: esc = 'a'; goto c_escape;
 case '\b': esc = 'b'; goto c_escape;
 case '\f': esc = 'f'; goto c_escape;
 case '\n': esc = 'n'; goto c_and_shell_escape;
 case '\r': esc = 'r'; goto c_and_shell_escape;
 case '\t': esc = 't'; goto c_and_shell_escape;
 case '\v': esc = 'v'; goto c_escape;
 case '\\': esc = c; goto c_and_shell_escape;

 c_and_shell_escape:
   if (quoting_style == 128)
     goto use_shell_always_quoting_style;
 c_escape:
   if (backslash_escapes)
     {
       c = esc;
       goto store_escape;
     }
   break;

 case '#': case '~':
   if (i != 0)
     break;

 case ' ':
 case '!':
 case '"': case '$': case '&':
 case '(': case ')': case '*': case ';':
 case '<': case '>': case '[':
 case '^':
 case '`': case '|':




   if (quoting_style == 128)
     goto use_shell_always_quoting_style;
   break;

 case '\'':
   switch (quoting_style)
     {
     case 128:
       goto use_shell_always_quoting_style;

     case 129:
       do { if (len < buffersize) buffer[len] = ('\''); len++; } while (0);
       do { if (len < buffersize) buffer[len] = ('\\'); len++; } while (0);
       do { if (len < buffersize) buffer[len] = ('\''); len++; } while (0);
       break;

     default:
       break;
     }
   break;

 case '%': case '+': case ',': case '-': case '.': case '/':
 case '0': case '1': case '2': case '3': case '4': case '5':
 case '6': case '7': case '8': case '9': case ':': case '=':
 case 'A': case 'B': case 'C': case 'D': case 'E': case 'F':
 case 'G': case 'H': case 'I': case 'J': case 'K': case 'L':
 case 'M': case 'N': case 'O': case 'P': case 'Q': case 'R':
 case 'S': case 'T': case 'U': case 'V': case 'W': case 'X':
 case 'Y': case 'Z': case ']': case '_': case 'a': case 'b':
 case 'c': case 'd': case 'e': case 'f': case 'g': case 'h':
 case 'i': case 'j': case 'k': case 'l': case 'm': case 'n':
 case 'o': case 'p': case 'q': case 'r': case 's': case 't':
 case 'u': case 'v': case 'w': case 'x': case 'y': case 'z':
 case '{': case '}':


   break;

 default:





   {

     size_t m;

     int printable;

     if (unibyte_locale)
       {
  m = 1;
  printable = ISPRINT (c);
       }
     else
       {
  mbstate_t mbstate;
  memset (&mbstate, 0, sizeof mbstate);

  m = 0;
  printable = 1;
  if (argsize == (size_t) -1)
    argsize = strlen (arg);

  do
    {
      wchar_t w;
      size_t bytes = mbrtowc (&w, &arg[i + m],
         argsize - (i + m), &mbstate);
      if (bytes == 0)
        break;
      else if (bytes == (size_t) -1)
        {
   printable = 0;
   break;
        }
      else if (bytes == (size_t) -2)
        {
   printable = 0;
   while (i + m < argsize && arg[i + m])
     m++;
   break;
        }
      else
        {
   if (! iswprint (w))
     printable = 0;
   m += bytes;
        }
    }
  while (! mbsinit (&mbstate));
       }

     if (1 < m || (backslash_escapes && ! printable))
       {


  size_t ilim = i + m;

  for (;;)
    {
      if (backslash_escapes && ! printable)
        {
   do { if (len < buffersize) buffer[len] = ('\\'); len++; } while (0);
   do { if (len < buffersize) buffer[len] = ('0' + (c >> 6)); len++; } while (0);
   do { if (len < buffersize) buffer[len] = ('0' + ((c >> 3) & 7)); len++; } while (0);
   c = '0' + (c & 7);
        }
      if (ilim <= i + 1)
        break;
      do { if (len < buffersize) buffer[len] = (c); len++; } while (0);
      c = arg[++i];
    }

  goto store_c;
       }
   }
 }

      if (! (backslash_escapes
      && o->quote_these_too[c / INT_BITS] & (1 << (c % INT_BITS))))
 goto store_c;

    store_escape:
      do { if (len < buffersize) buffer[len] = ('\\'); len++; } while (0);

    store_c:
      do { if (len < buffersize) buffer[len] = (c); len++; } while (0);
    }

  if (quote_string)
    for (; *quote_string; quote_string++)
      do { if (len < buffersize) buffer[len] = (*quote_string); len++; } while (0);

  if (len < buffersize)
    buffer[len] = '\0';
  return len;

 use_shell_always_quoting_style:
  return quotearg_buffer_restyled (buffer, buffersize, arg, argsize,
       129, o);
}
