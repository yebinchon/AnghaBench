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
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (char const*,int) ; 

__attribute__((used)) static char FUNC3(const char *zName){
  int i;
  if( !FUNC1((unsigned char)zName[0]) && zName[0]!='_' ) return '"';
  for(i=0; zName[i]; i++){
    if( !FUNC0((unsigned char)zName[i]) && zName[i]!='_' ) return '"';
  }
  return FUNC2(zName, i) ? '"' : 0;
}