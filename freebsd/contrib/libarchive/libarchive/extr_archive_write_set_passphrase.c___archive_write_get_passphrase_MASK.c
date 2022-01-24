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
struct archive_write {char const* passphrase; char* (* passphrase_callback ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  archive; int /*<<< orphan*/  passphrase_client_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char const* FUNC1 (char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

const char *
FUNC3(struct archive_write *a)
{

	if (a->passphrase != NULL)
		return (a->passphrase);

	if (a->passphrase_callback != NULL) {
		const char *p;
		p = a->passphrase_callback(&a->archive,
		    a->passphrase_client_data);
		if (p != NULL) {
			a->passphrase = FUNC1(p);
			if (a->passphrase == NULL) {
				FUNC0(&a->archive, ENOMEM,
				    "Can't allocate data for passphrase");
				return (NULL);
			}
			return (a->passphrase);
		}
	}
	return (NULL);
}