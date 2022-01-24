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
typedef  int /*<<< orphan*/  TString ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC4(const TString* ts)
{
 const char* s=FUNC0(ts);
 size_t i,n=FUNC3(ts);
 FUNC2("%c",'"');
 for (i=0; i<n; i++)
 {
  int c=(int)(unsigned char)s[i];
  switch (c)
  {
   case '"':  FUNC2("\\\""); break;
   case '\\': FUNC2("\\\\"); break;
   case '\a': FUNC2("\\a"); break;
   case '\b': FUNC2("\\b"); break;
   case '\f': FUNC2("\\f"); break;
   case '\n': FUNC2("\\n"); break;
   case '\r': FUNC2("\\r"); break;
   case '\t': FUNC2("\\t"); break;
   case '\v': FUNC2("\\v"); break;
   default:	if (FUNC1(c))
   			FUNC2("%c",c);
		else
			FUNC2("\\%03d",c);
  }
 }
 FUNC2("%c",'"');
}