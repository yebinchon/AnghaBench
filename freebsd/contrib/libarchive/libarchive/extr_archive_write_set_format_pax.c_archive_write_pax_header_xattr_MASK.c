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
struct pax {int flags; int /*<<< orphan*/  pax_header; } ;
struct archive_string {int /*<<< orphan*/  s; } ;

/* Variables and functions */
 int WRITE_LIBARCHIVE_XATTR ; 
 int WRITE_SCHILY_XATTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_string*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_string*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_string*) ; 
 char* FUNC6 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(struct pax *pax, const char *encoded_name,
    const void *value, size_t value_len)
{
	struct archive_string s;
	char *encoded_value;

	if (pax->flags & WRITE_LIBARCHIVE_XATTR) {
		encoded_value = FUNC6((const char *)value, value_len);

		if (encoded_name != NULL && encoded_value != NULL) {
			FUNC5(&s);
			FUNC3(&s, "LIBARCHIVE.xattr.");
			FUNC2(&s, encoded_name);
			FUNC0(&(pax->pax_header), s.s, encoded_value);
			FUNC4(&s);
		}
		FUNC7(encoded_value);
	}
	if (pax->flags & WRITE_SCHILY_XATTR) {
		FUNC5(&s);
		FUNC3(&s, "SCHILY.xattr.");
		FUNC2(&s, encoded_name);
		FUNC1(&(pax->pax_header), s.s, value, value_len);
		FUNC4(&s);
	}
}