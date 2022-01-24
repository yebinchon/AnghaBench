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
struct roff_meta {scalar_t__ macroset; } ;
struct mparse {int dummy; } ;
typedef  enum outt { ____Placeholder_outt } outt ;

/* Variables and functions */
 scalar_t__ MACROSET_MAN ; 
 scalar_t__ MACROSET_MDOC ; 
#define  OUTT_ASCII 130 
#define  OUTT_HTML 129 
#define  OUTT_UTF8 128 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (void*,struct roff_meta*) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct roff_meta*) ; 
 int /*<<< orphan*/  FUNC2 (struct mparse*,int /*<<< orphan*/ ,char*) ; 
 struct roff_meta* FUNC3 (struct mparse*) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct roff_meta*) ; 
 int /*<<< orphan*/  FUNC5 (void*,struct roff_meta*) ; 

__attribute__((used)) static void
FUNC6(struct mparse *parser, enum outt outtype, void *formatter)
{
	struct roff_meta *meta;

	FUNC2(parser, STDIN_FILENO, "<unixfd>");
	meta = FUNC3(parser);
	if (meta->macroset == MACROSET_MDOC) {
		switch (outtype) {
		case OUTT_ASCII:
		case OUTT_UTF8:
			FUNC5(formatter, meta);
			break;
		case OUTT_HTML:
			FUNC1(formatter, meta);
			break;
		}
	}
	if (meta->macroset == MACROSET_MAN) {
		switch (outtype) {
		case OUTT_ASCII:
		case OUTT_UTF8:
			FUNC4(formatter, meta);
			break;
		case OUTT_HTML:
			FUNC0(formatter, meta);
			break;
		}
	}
}