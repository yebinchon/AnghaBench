
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uschar ;


 int FATAL (char*,int*) ;
 int SYNTAX (char*,char const*) ;
 int isdigit (int) ;
 scalar_t__ malloc (scalar_t__) ;
 scalar_t__ strlen (char const*) ;

char *qstring(const char *is, int delim)
{
 const char *os = is;
 int c, n;
 uschar *s = (uschar *) is;
 uschar *buf, *bp;

 if ((buf = (uschar *) malloc(strlen(is)+3)) == ((void*)0))
  FATAL( "out of space in qstring(%s)", s);
 for (bp = buf; (c = *s) != delim; s++) {
  if (c == '\n')
   SYNTAX( "newline in string %.20s...", os );
  else if (c != '\\')
   *bp++ = c;
  else {
   c = *++s;
   if (c == 0) {
    *bp++ = '\\';
    break;
   }
   switch (c) {
   case '\\': *bp++ = '\\'; break;
   case 'n': *bp++ = '\n'; break;
   case 't': *bp++ = '\t'; break;
   case 'b': *bp++ = '\b'; break;
   case 'f': *bp++ = '\f'; break;
   case 'r': *bp++ = '\r'; break;
   default:
    if (!isdigit(c)) {
     *bp++ = c;
     break;
    }
    n = c - '0';
    if (isdigit(s[1])) {
     n = 8 * n + *++s - '0';
     if (isdigit(s[1]))
      n = 8 * n + *++s - '0';
    }
    *bp++ = n;
    break;
   }
  }
 }
 *bp++ = 0;
 return (char *) buf;
}
