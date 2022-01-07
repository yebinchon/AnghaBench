
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; } ;


 int FATAL (char*,...) ;
 int REGEXPR ;
 int RET (int ) ;
 int SYNTAX (char*,char*) ;
 int adjbuf (char**,int*,int,int,char**,char*) ;
 void* input () ;
 scalar_t__ malloc (int) ;
 int tostring (char*) ;
 int unput (char) ;
 TYPE_1__ yylval ;

int regexpr(void)
{
 int c;
 static char *buf = ((void*)0);
 static int bufsz = 500;
 char *bp;

 if (buf == ((void*)0) && (buf = (char *) malloc(bufsz)) == ((void*)0))
  FATAL("out of space for rex expr");
 bp = buf;
 for ( ; (c = input()) != '/' && c != 0; ) {
  if (!adjbuf(&buf, &bufsz, bp-buf+3, 500, &bp, "regexpr"))
   FATAL("out of space for reg expr %.10s...", buf);
  if (c == '\n') {
   *bp = '\0';
   SYNTAX( "newline in regular expression %.10s...", buf );
   unput('\n');
   break;
  } else if (c == '\\') {
   *bp++ = '\\';
   *bp++ = input();
  } else {
   *bp++ = c;
  }
 }
 *bp = 0;
 if (c == 0)
  SYNTAX("non-terminated regular expression %.10s...", buf);
 yylval.s = tostring(buf);
 unput('/');
 RET(REGEXPR);
}
