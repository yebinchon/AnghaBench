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
struct archive_string {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ ARCHIVE_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct archive_string*,char const) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*) ; 
 scalar_t__ FUNC2 (struct archive_string*,char const*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct archive_string *as, const char *p)
{
	const char *s = p;

	FUNC1(as);

	/* Skip beginning space characters. */
	while (*s != '\0' && *s == ' ')
		s++;
	/* Copy non-space characters. */
	while (*s != '\0' && *s != ' ') {
		if (*s == '\\') {
			if (s[1] != '\0') {
				FUNC0(as, s[1]);
				s += 2;
			} else {
				s++;/* Ignore this character.*/
				break;
			}
		} else if (*s == '"') {
			ssize_t q = FUNC2(as, s);
			if (q < 0)
				return (ARCHIVE_FAILED);/* Invalid sequence. */
			s += q;
		} else {
			FUNC0(as, s[0]);
			s++;
		}
	}
	return ((ssize_t)(s - p));
}