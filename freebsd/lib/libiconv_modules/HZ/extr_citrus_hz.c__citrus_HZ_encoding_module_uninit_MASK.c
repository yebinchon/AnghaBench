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
typedef  int /*<<< orphan*/  escape_t ;
typedef  int /*<<< orphan*/  _HZEncodingInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(_HZEncodingInfo *ei)
{
	escape_t *escape;

	while ((escape = FUNC4(FUNC0(ei))) != NULL) {
		FUNC5(FUNC0(ei), escape, entry);
		FUNC6(FUNC2(escape));
		FUNC6(FUNC3(escape));
		FUNC6(escape);
	}
	while ((escape = FUNC4(FUNC1(ei))) != NULL) {
		FUNC5(FUNC1(ei), escape, entry);
		FUNC6(FUNC2(escape));
		FUNC6(FUNC3(escape));
		FUNC6(escape);
	}
}