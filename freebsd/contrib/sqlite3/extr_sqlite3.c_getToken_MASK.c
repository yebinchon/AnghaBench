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
 int TK_ID ; 
 int TK_JOIN_KW ; 
 int TK_OVER ; 
 int TK_SPACE ; 
 int TK_STRING ; 
 int TK_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*,int*) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(const unsigned char **pz){
  const unsigned char *z = *pz;
  int t;                          /* Token type to return */
  do {
    z += FUNC0(z, &t);
  }while( t==TK_SPACE );
  if( t==TK_ID 
   || t==TK_STRING 
   || t==TK_JOIN_KW 
   || t==TK_WINDOW 
   || t==TK_OVER 
   || FUNC1(t)==TK_ID 
  ){
    t = TK_ID;
  }
  *pz = z;
  return t;
}