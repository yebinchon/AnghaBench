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
struct TYPE_3__ {char* zDestTable; } ;
typedef  TYPE_1__ ShellState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 char FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(ShellState *p, const char *zName){
  int i, n;
  char cQuote;
  char *z;

  if( p->zDestTable ){
    FUNC0(p->zDestTable);
    p->zDestTable = 0;
  }
  if( zName==0 ) return;
  cQuote = FUNC2(zName);
  n = FUNC4(zName);
  if( cQuote ) n += n+2;
  z = p->zDestTable = FUNC1( n+1 );
  if( z==0 ) FUNC3();
  n = 0;
  if( cQuote ) z[n++] = cQuote;
  for(i=0; zName[i]; i++){
    z[n++] = zName[i];
    if( zName[i]==cQuote ) z[n++] = cQuote;
  }
  if( cQuote ) z[n++] = cQuote;
  z[n] = 0;
}