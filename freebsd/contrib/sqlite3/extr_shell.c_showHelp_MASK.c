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
 int FUNC0 (char**) ; 
 char** azHelp ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int FUNC7(FILE *out, const char *zPattern){
  int i = 0;
  int j = 0;
  int n = 0;
  char *zPat;
  if( zPattern==0
   || zPattern[0]=='0'
   || FUNC5(zPattern,"-a")==0
   || FUNC5(zPattern,"-all")==0
  ){
    /* Show all commands, but only one line per command */
    if( zPattern==0 ) zPattern = "";
    for(i=0; i<FUNC0(azHelp); i++){
      if( azHelp[i][0]=='.' || zPattern[0] ){
        FUNC6(out, "%s\n", azHelp[i]);
        n++;
      }
    }
  }else{
    /* Look for commands that for which zPattern is an exact prefix */
    zPat = FUNC2(".%s*", zPattern);
    for(i=0; i<FUNC0(azHelp); i++){
      if( FUNC3(zPat, azHelp[i])==0 ){
        FUNC6(out, "%s\n", azHelp[i]);
        j = i+1;
        n++;
      }
    }
    FUNC1(zPat);
    if( n ){
      if( n==1 ){
        /* when zPattern is a prefix of exactly one command, then include the
        ** details of that command, which should begin at offset j */
        while( j<FUNC0(azHelp)-1 && azHelp[j][0]!='.' ){
          FUNC6(out, "%s\n", azHelp[j]);
          j++;
        }
      }
      return n;
    }
    /* Look for commands that contain zPattern anywhere.  Show the complete
    ** text of all commands that match. */
    zPat = FUNC2("%%%s%%", zPattern);
    for(i=0; i<FUNC0(azHelp); i++){
      if( azHelp[i][0]=='.' ) j = i;
      if( FUNC4(zPat, azHelp[i], 0)==0 ){
        FUNC6(out, "%s\n", azHelp[j]);
        while( j<FUNC0(azHelp)-1 && azHelp[j+1][0]!='.' ){
          j++;
          FUNC6(out, "%s\n", azHelp[j]);
        }
        i = j;
        n++;
      }
    }
    FUNC1(zPat);
  }
  return n;
}