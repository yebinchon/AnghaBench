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

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int FUNC4(const char *zArg){
  int i;
  if( zArg[0]=='0' && zArg[1]=='x' ){
    for(i=2; FUNC0(zArg[i])>=0; i++){}
  }else{
    for(i=0; zArg[i]>='0' && zArg[i]<='9'; i++){}
  }
  if( i>0 && zArg[i]==0 ) return (int)(FUNC1(zArg) & 0xffffffff);
  if( FUNC2(zArg, "on")==0 || FUNC2(zArg,"yes")==0 ){
    return 1;
  }
  if( FUNC2(zArg, "off")==0 || FUNC2(zArg,"no")==0 ){
    return 0;
  }
  FUNC3(stderr, "ERROR: Not a boolean value: \"%s\". Assuming \"no\".\n",
          zArg);
  return 0;
}