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
struct archive_mstring {scalar_t__ aes_set; int /*<<< orphan*/  aes_mbs_in_locale; int /*<<< orphan*/  aes_utf8; int /*<<< orphan*/  aes_mbs; int /*<<< orphan*/  aes_wcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct archive_mstring *aes)
{
	FUNC1(&(aes->aes_wcs));
	FUNC0(&(aes->aes_mbs));
	FUNC0(&(aes->aes_utf8));
	FUNC0(&(aes->aes_mbs_in_locale));
	aes->aes_set = 0;
}