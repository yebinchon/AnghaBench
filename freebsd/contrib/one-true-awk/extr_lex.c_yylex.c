
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; void* cp; } ;


 int ADDEQ ;
 int AND ;
 int APPEND ;
 int ASGNOP ;
 int ASSIGN ;
 int BOR ;
 int CON ;
 int DECR ;
 int EQ ;
 int FATAL (char*) ;
 int GE ;
 int GT ;
 int INCR ;
 int INDIRECT ;
 int IVAR ;
 int LE ;
 int LT ;
 int MATCH ;
 int MATCHOP ;
 int MODEQ ;
 int MULTEQ ;
 int NE ;
 int NL ;
 int NOT ;
 int NOTMATCH ;
 int NUM ;
 int NUMBER ;
 void* POWEQ ;
 int POWER ;
 int RET (int) ;
 int STR ;
 int SUBEQ ;
 int SYNTAX (char*) ;
 double atof (char*) ;
 int bracecnt ;
 int brackcnt ;
 int gettok (char**,int*) ;
 int infunc ;
 int input () ;
 scalar_t__ isalpha (int) ;
 int isarg (char*) ;
 scalar_t__ isdigit (int) ;
 int lineno ;
 scalar_t__ malloc (int) ;
 int parencnt ;
 char peek () ;
 scalar_t__ reg ;
 int regexpr () ;
 int sc ;
 void* setsymtab (char*,char*,double,int,int ) ;
 int strcmp (char*,char*) ;
 int string () ;
 int symtab ;
 char* tostring (char*) ;
 int unput (int) ;
 int unputstr (char*) ;
 int word (char*) ;
 TYPE_1__ yylval ;

int yylex(void)
{
 int c;
 static char *buf = ((void*)0);
 static int bufsize = 5;

 if (buf == ((void*)0) && (buf = (char *) malloc(bufsize)) == ((void*)0))
  FATAL( "out of space in yylex" );
 if (sc) {
  sc = 0;
  RET('}');
 }
 if (reg) {
  reg = 0;
  return regexpr();
 }
 for (;;) {
  c = gettok(&buf, &bufsize);
  if (c == 0)
   return 0;
  if (isalpha(c) || c == '_')
   return word(buf);
  if (isdigit(c)) {
   yylval.cp = setsymtab(buf, tostring(buf), atof(buf), CON|NUM, symtab);

   RET(NUMBER);
  }

  yylval.i = c;
  switch (c) {
  case '\n':
   lineno++;
   RET(NL);
  case '\r':
  case ' ':
  case '\t':
   break;
  case '#':
   while ((c = input()) != '\n' && c != 0)
    ;
   unput(c);
   break;
  case ';':
   RET(';');
  case '\\':
   if (peek() == '\n') {
    input();
    lineno++;
   } else if (peek() == '\r') {
    input(); input();
    lineno++;
   } else {
    RET(c);
   }
   break;
  case '&':
   if (peek() == '&') {
    input(); RET(AND);
   } else
    RET('&');
  case '|':
   if (peek() == '|') {
    input(); RET(BOR);
   } else
    RET('|');
  case '!':
   if (peek() == '=') {
    input(); yylval.i = NE; RET(NE);
   } else if (peek() == '~') {
    input(); yylval.i = NOTMATCH; RET(MATCHOP);
   } else
    RET(NOT);
  case '~':
   yylval.i = MATCH;
   RET(MATCHOP);
  case '<':
   if (peek() == '=') {
    input(); yylval.i = LE; RET(LE);
   } else {
    yylval.i = LT; RET(LT);
   }
  case '=':
   if (peek() == '=') {
    input(); yylval.i = EQ; RET(EQ);
   } else {
    yylval.i = ASSIGN; RET(ASGNOP);
   }
  case '>':
   if (peek() == '=') {
    input(); yylval.i = GE; RET(GE);
   } else if (peek() == '>') {
    input(); yylval.i = APPEND; RET(APPEND);
   } else {
    yylval.i = GT; RET(GT);
   }
  case '+':
   if (peek() == '+') {
    input(); yylval.i = INCR; RET(INCR);
   } else if (peek() == '=') {
    input(); yylval.i = ADDEQ; RET(ASGNOP);
   } else
    RET('+');
  case '-':
   if (peek() == '-') {
    input(); yylval.i = DECR; RET(DECR);
   } else if (peek() == '=') {
    input(); yylval.i = SUBEQ; RET(ASGNOP);
   } else
    RET('-');
  case '*':
   if (peek() == '=') {
    input(); yylval.i = MULTEQ; RET(ASGNOP);
   } else if (peek() == '*') {
    input();
    if (peek() == '=') {
     input(); yylval.i = POWEQ; RET(ASGNOP);
    } else {
     RET(POWER);
    }
   } else
    RET('*');
  case '/':
   RET('/');
  case '%':
   if (peek() == '=') {
    input(); yylval.i = MODEQ; RET(ASGNOP);
   } else
    RET('%');
  case '^':
   if (peek() == '=') {
    input(); yylval.i = POWEQ; RET(ASGNOP);
   } else
    RET(POWER);

  case '$':

   c = gettok(&buf, &bufsize);
   if (isalpha(c)) {
    if (strcmp(buf, "NF") == 0) {
     unputstr("(NF)");
     RET(INDIRECT);
    }
    c = peek();
    if (c == '(' || c == '[' || (infunc && isarg(buf) >= 0)) {
     unputstr(buf);
     RET(INDIRECT);
    }
    yylval.cp = setsymtab(buf, "", 0.0, STR|NUM, symtab);
    RET(IVAR);
   } else if (c == 0) {
    SYNTAX( "unexpected end of input after $" );
    RET(';');
   } else {
    unputstr(buf);
    RET(INDIRECT);
   }

  case '}':
   if (--bracecnt < 0)
    SYNTAX( "extra }" );
   sc = 1;
   RET(';');
  case ']':
   if (--brackcnt < 0)
    SYNTAX( "extra ]" );
   RET(']');
  case ')':
   if (--parencnt < 0)
    SYNTAX( "extra )" );
   RET(')');
  case '{':
   bracecnt++;
   RET('{');
  case '[':
   brackcnt++;
   RET('[');
  case '(':
   parencnt++;
   RET('(');

  case '"':
   return string();

  default:
   RET(c);
  }
 }
}
