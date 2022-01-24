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
typedef  int /*<<< orphan*/  DumpState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC3 (size_t) ; 
 char* FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC6 (const TString *s, DumpState *D) {
  if (s == NULL)
    FUNC0(0, D);
  else {
    size_t size = FUNC5(s) + 1;  /* include trailing '\0' */
    const char *str = FUNC4(s);
    if (size < 0xFF)
      FUNC0(FUNC3(size), D);
    else {
      FUNC0(0xFF, D);
      FUNC1(size, D);
    }
    FUNC2(str, size - 1, D);  /* no need to save '\0' */
  }
}