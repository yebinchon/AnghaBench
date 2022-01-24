#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* nullValue; char const* colSeparator; int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ ShellState ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*,int) ; 
 scalar_t__* needCsvQuote ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static void FUNC5(ShellState *p, const char *z, int bSep){
  FILE *out = p->out;
  if( z==0 ){
    FUNC4(out,"%s",p->nullValue);
  }else{
    int i;
    int nSep = FUNC3(p->colSeparator);
    for(i=0; z[i]; i++){
      if( needCsvQuote[((unsigned char*)z)[i]]
         || (z[i]==p->colSeparator[0] &&
             (nSep==1 || FUNC0(z, p->colSeparator, nSep)==0)) ){
        i = 0;
        break;
      }
    }
    if( i==0 ){
      char *zQuoted = FUNC2("\"%w\"", z);
      FUNC4(out, "%s", zQuoted);
      FUNC1(zQuoted);
    }else{
      FUNC4(out, "%s", z);
    }
  }
  if( bSep ){
    FUNC4(p->out, "%s", p->colSeparator);
  }
}