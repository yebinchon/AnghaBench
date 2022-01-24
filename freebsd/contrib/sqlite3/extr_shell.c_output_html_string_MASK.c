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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char const*) ; 

__attribute__((used)) static void FUNC2(FILE *out, const char *z){
  int i;
  if( z==0 ) z = "";
  while( *z ){
    for(i=0;   z[i]
            && z[i]!='<'
            && z[i]!='&'
            && z[i]!='>'
            && z[i]!='\"'
            && z[i]!='\'';
        i++){}
    if( i>0 ){
      FUNC1(out,"%.*s",i,z);
    }
    if( z[i]=='<' ){
      FUNC0(out,"&lt;");
    }else if( z[i]=='&' ){
      FUNC0(out,"&amp;");
    }else if( z[i]=='>' ){
      FUNC0(out,"&gt;");
    }else if( z[i]=='\"' ){
      FUNC0(out,"&quot;");
    }else if( z[i]=='\'' ){
      FUNC0(out,"&#39;");
    }else{
      break;
    }
    z += i + 1;
  }
}