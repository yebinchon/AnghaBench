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
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned int) ; 

__attribute__((used)) static void FUNC3(FILE *out, const char *z){
  unsigned int c;
  FUNC0('"', out);
  while( (c = *(z++))!=0 ){
    if( c=='\\' ){
      FUNC0(c, out);
      FUNC0(c, out);
    }else if( c=='"' ){
      FUNC0('\\', out);
      FUNC0('"', out);
    }else if( c=='\t' ){
      FUNC0('\\', out);
      FUNC0('t', out);
    }else if( c=='\n' ){
      FUNC0('\\', out);
      FUNC0('n', out);
    }else if( c=='\r' ){
      FUNC0('\\', out);
      FUNC0('r', out);
    }else if( !FUNC1(c&0xff) ){
      FUNC2(out, "\\%03o", c&0xff);
    }else{
      FUNC0(c, out);
    }
  }
  FUNC0('"', out);
}