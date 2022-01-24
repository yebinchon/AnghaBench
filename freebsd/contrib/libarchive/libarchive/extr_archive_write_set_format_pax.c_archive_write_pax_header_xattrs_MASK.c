#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* s; } ;
struct pax {TYPE_1__ l_url_encoded_name; int /*<<< orphan*/  sconv_utf8; } ;
struct archive_write {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char const**,void const**,size_t*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pax*,char*,void const*,size_t) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*) ; 

__attribute__((used)) static int
FUNC7(struct archive_write *a,
    struct pax *pax, struct archive_entry *entry)
{
	int i = FUNC1(entry);

	while (i--) {
		const char *name;
		const void *value;
		char *url_encoded_name = NULL, *encoded_name = NULL;
		size_t size;
		int r;

		FUNC0(entry, &name, &value, &size);
		url_encoded_name = FUNC6(name);
		if (url_encoded_name != NULL) {
			/* Convert narrow-character to UTF-8. */
			r = FUNC3(&(pax->l_url_encoded_name),
			    url_encoded_name, pax->sconv_utf8);
			FUNC5(url_encoded_name); /* Done with this. */
			if (r == 0)
				encoded_name = pax->l_url_encoded_name.s;
			else if (errno == ENOMEM) {
				FUNC2(&a->archive, ENOMEM,
				    "Can't allocate memory for Linkname");
				return (ARCHIVE_FATAL);
			}
		}

		FUNC4(pax, encoded_name,
		    value, size);

	}
	return (ARCHIVE_OK);
}