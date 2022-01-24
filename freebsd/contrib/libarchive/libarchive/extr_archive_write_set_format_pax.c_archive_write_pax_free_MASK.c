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
struct pax {int /*<<< orphan*/  l_url_encoded_name; int /*<<< orphan*/  sparse_map; int /*<<< orphan*/  pax_header; } ;
struct archive_write {int /*<<< orphan*/ * format_data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pax*) ; 
 int /*<<< orphan*/  FUNC2 (struct pax*) ; 

__attribute__((used)) static int
FUNC3(struct archive_write *a)
{
	struct pax *pax;

	pax = (struct pax *)a->format_data;
	if (pax == NULL)
		return (ARCHIVE_OK);

	FUNC0(&pax->pax_header);
	FUNC0(&pax->sparse_map);
	FUNC0(&pax->l_url_encoded_name);
	FUNC2(pax);
	FUNC1(pax);
	a->format_data = NULL;
	return (ARCHIVE_OK);
}