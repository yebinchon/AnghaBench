
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ eol_token ;
 int get_char (int *) ;
 scalar_t__ isalpha (int) ;
 scalar_t__ isascii (int) ;
 scalar_t__ isdigit (int) ;
 scalar_t__ isspace (int) ;
 int lexchar ;
 int lexline ;
 int line ;
 int lpos ;
 int read_num_or_name (int,int *) ;
 int read_number (int,int *) ;
 int read_string (int *) ;
 int skip_to_eol (int *) ;
 char* tval ;

__attribute__((used)) static int
get_token(FILE *cfile)
{
 int c, ttok;
 static char tb[2];
 int l, p;

 do {
  l = line;
  p = lpos;

  c = get_char(cfile);

  if (!(c == '\n' && eol_token) && isascii(c) && isspace(c))
   continue;
  if (c == '#') {
   skip_to_eol(cfile);
   continue;
  }
  if (c == '"') {
   lexline = l;
   lexchar = p;
   ttok = read_string(cfile);
   break;
  }
  if ((isascii(c) && isdigit(c)) || c == '-') {
   lexline = l;
   lexchar = p;
   ttok = read_number(c, cfile);
   break;
  } else if (isascii(c) && isalpha(c)) {
   lexline = l;
   lexchar = p;
   ttok = read_num_or_name(c, cfile);
   break;
  } else {
   lexline = l;
   lexchar = p;
   tb[0] = c;
   tb[1] = 0;
   tval = tb;
   ttok = c;
   break;
  }
 } while (1);
 return (ttok);
}
