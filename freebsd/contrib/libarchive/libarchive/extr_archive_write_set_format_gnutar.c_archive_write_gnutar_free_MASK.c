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
struct gnutar {int dummy; } ;
struct archive_write {int /*<<< orphan*/ * format_data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct gnutar*) ; 

__attribute__((used)) static int
FUNC1(struct archive_write *a)
{
	struct gnutar *gnutar;

	gnutar = (struct gnutar *)a->format_data;
	FUNC0(gnutar);
	a->format_data = NULL;
	return (ARCHIVE_OK);
}