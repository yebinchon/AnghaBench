#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int lineno; int /*<<< orphan*/  in; scalar_t__ outCount; int /*<<< orphan*/  out; } ;
typedef  TYPE_1__ ShellState ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  SHFLG_Echo ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  bail_on_error ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,int) ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 char* FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 char* FUNC15 (char*,int) ; 
 scalar_t__ FUNC16 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ seenInterrupt ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 (char*) ; 
 scalar_t__ stdin_is_interactive ; 
 int FUNC19 (char*) ; 

__attribute__((used)) static int FUNC20(ShellState *p){
  char *zLine = 0;          /* A single input line */
  char *zSql = 0;           /* Accumulated SQL text */
  int nLine;                /* Length of current line */
  int nSql = 0;             /* Bytes of zSql[] used */
  int nAlloc = 0;           /* Allocated zSql[] space */
  int nSqlPrior = 0;        /* Bytes of zSql[] used by prior line */
  int rc;                   /* Error code */
  int errCnt = 0;           /* Number of errors seen */
  int startline = 0;        /* Line number for start of current input */

  p->lineno = 0;
  while( errCnt==0 || !bail_on_error || (p->in==0 && stdin_is_interactive) ){
    FUNC6(p->out);
    zLine = FUNC12(p->in, zLine, nSql>0);
    if( zLine==0 ){
      /* End of input */
      if( p->in==0 && stdin_is_interactive ) FUNC14("\n");
      break;
    }
    if( seenInterrupt ){
      if( p->in!=0 ) break;
      seenInterrupt = 0;
    }
    p->lineno++;
    if( nSql==0 && FUNC2(zLine) ){
      if( FUNC1(p, SHFLG_Echo) ) FUNC14("%s\n", zLine);
      continue;
    }
    if( zLine && (zLine[0]=='.' || zLine[0]=='#') && nSql==0 ){
      if( FUNC1(p, SHFLG_Echo) ) FUNC14("%s\n", zLine);
      if( zLine[0]=='.' ){
        rc = FUNC5(zLine, p);
        if( rc==2 ){ /* exit requested */
          break;
        }else if( rc ){
          errCnt++;
        }
      }
      continue;
    }
    if( FUNC9(zLine) && FUNC10(zSql, nSql) ){
      FUNC11(zLine,";",2);
    }
    nLine = FUNC19(zLine);
    if( nSql+nLine+2>=nAlloc ){
      nAlloc = nSql+nLine+100;
      zSql = FUNC15(zSql, nAlloc);
      if( zSql==0 ) FUNC17();
    }
    nSqlPrior = nSql;
    if( nSql==0 ){
      int i;
      for(i=0; zLine[i] && FUNC0(zLine[i]); i++){}
      FUNC3( nAlloc>0 && zSql!=0 );
      FUNC11(zSql, zLine+i, nLine+1-i);
      startline = p->lineno;
      nSql = nLine-i;
    }else{
      zSql[nSql++] = '\n';
      FUNC11(zSql+nSql, zLine, nLine+1);
      nSql += nLine;
    }
    if( nSql && FUNC8(&zSql[nSqlPrior], nSql-nSqlPrior)
                && FUNC18(zSql) ){
      errCnt += FUNC16(p, zSql, p->in, startline);
      nSql = 0;
      if( p->outCount ){
        FUNC13(p);
        p->outCount = 0;
      }else{
        FUNC4(p);
      }
    }else if( nSql && FUNC2(zSql) ){
      if( FUNC1(p, SHFLG_Echo) ) FUNC14("%s\n", zSql);
      nSql = 0;
    }
  }
  if( nSql && !FUNC2(zSql) ){
    errCnt += FUNC16(p, zSql, p->in, startline);
  }
  FUNC7(zSql);
  FUNC7(zLine);
  return errCnt>0;
}