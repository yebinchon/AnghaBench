
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int va_list ;
typedef union arg {int dummy; } arg ;
typedef int u_int ;
struct typetable {int nextarg; } ;


 int CHARINT ;
 int INTMAXT ;
 int LLONGINT ;
 int LONGDBL ;
 int LONGINT ;
 int MAX_POSARG ;
 int PTRDIFFT ;
 int SHORTINT ;
 int SIZET ;
 int TP_CHAR ;
 int TP_INT ;
 int TP_INTMAXT ;
 int TP_LLONG ;
 int TP_LONG ;
 int TP_PTRDIFFT ;
 int TP_SCHAR ;
 int TP_SHORT ;
 int TP_SSIZET ;
 int TP_VOID ;
 int TP_WCHAR ;
 int T_DOUBLE ;
 int T_INT ;
 int T_LONG_DOUBLE ;
 int T_WINT ;
 int addsarg (struct typetable*,int) ;
 int addtype (struct typetable*,int ) ;
 int adduarg (struct typetable*,int) ;
 int addwaster (struct typetable*,char**) ;
 int build_arg_table (struct typetable*,int ,union arg**) ;
 int freetypes (struct typetable*) ;
 int inittypes (struct typetable*) ;
 int is_digit (char) ;
 int to_digit (char) ;

int
__find_warguments (const wchar_t *fmt0, va_list ap, union arg **argtable)
{
 wchar_t *fmt;
 wchar_t ch;
 u_int n;
 int error;
 int flags;
 struct typetable types;

 fmt = (wchar_t *)fmt0;
 inittypes(&types);
 error = 0;




 for (;;) {
  while ((ch = *fmt) != '\0' && ch != '%')
   fmt++;
  if (ch == '\0')
   goto done;
  fmt++;

  flags = 0;

rflag: ch = *fmt++;
reswitch: switch (ch) {
  case ' ':
  case '#':
   goto rflag;
  case '*':
   if ((error = addwaster(&types, &fmt)))
    goto error;
   goto rflag;
  case '-':
  case '+':
  case '\'':
   goto rflag;
  case '.':
   if ((ch = *fmt++) == '*') {
    if ((error = addwaster(&types, &fmt)))
     goto error;
    goto rflag;
   }
   while (is_digit(ch)) {
    ch = *fmt++;
   }
   goto reswitch;
  case '0':
   goto rflag;
  case '1': case '2': case '3': case '4':
  case '5': case '6': case '7': case '8': case '9':
   n = 0;
   do {
    n = 10 * n + to_digit(ch);

    if (n > MAX_POSARG) {
     error = -1;
     goto error;
    }
    ch = *fmt++;
   } while (is_digit(ch));
   if (ch == '$') {
    types.nextarg = n;
    goto rflag;
   }
   goto reswitch;

  case 'L':
   flags |= LONGDBL;
   goto rflag;

  case 'h':
   if (flags & SHORTINT) {
    flags &= ~SHORTINT;
    flags |= CHARINT;
   } else
    flags |= SHORTINT;
   goto rflag;
  case 'j':
   flags |= INTMAXT;
   goto rflag;
  case 'l':
   if (flags & LONGINT) {
    flags &= ~LONGINT;
    flags |= LLONGINT;
   } else
    flags |= LONGINT;
   goto rflag;
  case 'q':
   flags |= LLONGINT;
   goto rflag;
  case 't':
   flags |= PTRDIFFT;
   goto rflag;
  case 'z':
   flags |= SIZET;
   goto rflag;
  case 'C':
   flags |= LONGINT;

  case 'c':
   error = addtype(&types,
     (flags & LONGINT) ? T_WINT : T_INT);
   if (error)
    goto error;
   break;
  case 'D':
   flags |= LONGINT;

  case 'd':
  case 'i':
   if ((error = addsarg(&types, flags)))
    goto error;
   break;

  case 'a':
  case 'A':
  case 'e':
  case 'E':
  case 'f':
  case 'g':
  case 'G':
   error = addtype(&types,
       (flags & LONGDBL) ? T_LONG_DOUBLE : T_DOUBLE);
   if (error)
    goto error;
   break;

  case 'n':
   if (flags & INTMAXT)
    error = addtype(&types, TP_INTMAXT);
   else if (flags & PTRDIFFT)
    error = addtype(&types, TP_PTRDIFFT);
   else if (flags & SIZET)
    error = addtype(&types, TP_SSIZET);
   else if (flags & LLONGINT)
    error = addtype(&types, TP_LLONG);
   else if (flags & LONGINT)
    error = addtype(&types, TP_LONG);
   else if (flags & SHORTINT)
    error = addtype(&types, TP_SHORT);
   else if (flags & CHARINT)
    error = addtype(&types, TP_SCHAR);
   else
    error = addtype(&types, TP_INT);
   if (error)
    goto error;
   continue;
  case 'O':
   flags |= LONGINT;

  case 'o':
   if ((error = adduarg(&types, flags)))
    goto error;
   break;
  case 'p':
   if ((error = addtype(&types, TP_VOID)))
    goto error;
   break;
  case 'S':
   flags |= LONGINT;

  case 's':
   error = addtype(&types,
       (flags & LONGINT) ? TP_WCHAR : TP_CHAR);
   if (error)
    goto error;
   break;
  case 'U':
   flags |= LONGINT;

  case 'u':
  case 'X':
  case 'x':
   if ((error = adduarg(&types, flags)))
    goto error;
   break;
  default:
   if (ch == '\0')
    goto done;
   break;
  }
 }
done:
 build_arg_table(&types, ap, argtable);
error:
 freetypes(&types);
 return (error || *argtable == ((void*)0));
}
