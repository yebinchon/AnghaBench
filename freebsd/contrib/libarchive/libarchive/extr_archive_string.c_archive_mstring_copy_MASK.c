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
struct archive_mstring {int /*<<< orphan*/  aes_wcs; int /*<<< orphan*/  aes_utf8; int /*<<< orphan*/  aes_mbs; int /*<<< orphan*/  aes_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2(struct archive_mstring *dest, struct archive_mstring *src)
{
	dest->aes_set = src->aes_set;
	FUNC0(&(dest->aes_mbs), &(src->aes_mbs));
	FUNC0(&(dest->aes_utf8), &(src->aes_utf8));
	FUNC1(&(dest->aes_wcs), &(src->aes_wcs));
}