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
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRACE_DATABASE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 size_t FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,size_t) ; 

__attribute__((used)) static bool
FUNC6(char *a, char *b)
{
    bool result = FALSE;
    if (a != 0 && b != 0) {
	int csi_a = FUNC2(a);
	int csi_b = FUNC2(b);
	size_t len_a;
	size_t len_b;

	FUNC0(TRACE_DATABASE, ("similar_sgr:\n\t%s\n\t%s",
			    FUNC1(1, a),
			    FUNC1(2, b)));
	if (csi_a != 0 && csi_b != 0 && csi_a == csi_b) {
	    a += csi_a;
	    b += csi_b;
	    if (*a != *b) {
		a = FUNC3(a);
		b = FUNC3(b);
	    }
	}
	len_a = FUNC4(a);
	len_b = FUNC4(b);
	if (len_a && len_b) {
	    if (len_a > len_b)
		result = (FUNC5(a, b, len_b) == 0);
	    else
		result = (FUNC5(a, b, len_a) == 0);
	}
	FUNC0(TRACE_DATABASE, ("...similar_sgr: %d\n\t%s\n\t%s", result,
			    FUNC1(1, a),
			    FUNC1(2, b)));
    }
    return result;
}