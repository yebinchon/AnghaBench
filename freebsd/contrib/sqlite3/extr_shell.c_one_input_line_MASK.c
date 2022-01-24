#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* continuePrompt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 char* mainPrompt ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static char *FUNC6(FILE *in, char *zPrior, int isContinuation){
  char *zPrompt;
  char *zResult;
  if( in!=0 ){
    zResult = FUNC2(zPrior, in);
  }else{
    zPrompt = isContinuation ? continuePrompt : mainPrompt;
#if SHELL_USE_LOCAL_GETLINE
    printf("%s", zPrompt);
    fflush(stdout);
    zResult = local_getline(zPrior, stdin);
#else
    FUNC1(zPrior);
    zResult = FUNC5(zPrompt);
    if( zResult && *zResult ) FUNC4(zResult);
#endif
  }
  return zResult;
}