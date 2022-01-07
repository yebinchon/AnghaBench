
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* nullValue; char const* colSeparator; int * out; } ;
typedef TYPE_1__ ShellState ;
typedef int FILE ;


 scalar_t__ memcmp (char const*,char const*,int) ;
 scalar_t__* needCsvQuote ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;
 int strlen30 (char const*) ;
 int utf8_printf (int *,char*,char const*) ;

__attribute__((used)) static void output_csv(ShellState *p, const char *z, int bSep){
  FILE *out = p->out;
  if( z==0 ){
    utf8_printf(out,"%s",p->nullValue);
  }else{
    int i;
    int nSep = strlen30(p->colSeparator);
    for(i=0; z[i]; i++){
      if( needCsvQuote[((unsigned char*)z)[i]]
         || (z[i]==p->colSeparator[0] &&
             (nSep==1 || memcmp(z, p->colSeparator, nSep)==0)) ){
        i = 0;
        break;
      }
    }
    if( i==0 ){
      char *zQuoted = sqlite3_mprintf("\"%w\"", z);
      utf8_printf(out, "%s", zQuoted);
      sqlite3_free(zQuoted);
    }else{
      utf8_printf(out, "%s", z);
    }
  }
  if( bSep ){
    utf8_printf(p->out, "%s", p->colSeparator);
  }
}
