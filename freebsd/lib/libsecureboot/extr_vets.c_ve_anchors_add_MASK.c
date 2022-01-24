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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  br_x509_trust_anchor ;
typedef  int /*<<< orphan*/  br_x509_certificate ;
typedef  int /*<<< orphan*/  anchor_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ anchor_verbose ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static size_t
FUNC4(br_x509_certificate *xcs, size_t num, anchor_list *anchors,
    const char *anchors_name)
{
	br_x509_trust_anchor ta;
	size_t u;

	for (u = 0; u < num; u++) {
		if (FUNC1(&ta, &xcs[u]) < 0) {
			break;
		}
		FUNC0(*anchors, ta);
		if (anchor_verbose && anchors_name) {
			char buf[64];
			char *cp;

			cp = FUNC3(&xcs[u], buf, sizeof(buf));
			if (cp) {
				FUNC2("x509_anchor(%s) %s\n", cp, anchors_name);
			}
		}
	}
	return (u);
}