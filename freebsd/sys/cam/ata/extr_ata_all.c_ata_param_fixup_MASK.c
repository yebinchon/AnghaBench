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
struct ata_params {int /*<<< orphan*/  serial; int /*<<< orphan*/  revision; int /*<<< orphan*/  model; } ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC5(struct ata_params *ident_buf)
{
	int16_t *ptr;

	for (ptr = (int16_t *)ident_buf;
	     ptr < (int16_t *)ident_buf + sizeof(struct ata_params)/2; ptr++) {
		*ptr = FUNC3(*ptr);
	}
	if (FUNC4(ident_buf->model, "FX", 2) &&
	    FUNC4(ident_buf->model, "NEC", 3) &&
	    FUNC4(ident_buf->model, "Pioneer", 7) &&
	    FUNC4(ident_buf->model, "SHARP", 5)) {
		FUNC1(ident_buf->model, sizeof(ident_buf->model));
		FUNC1(ident_buf->revision, sizeof(ident_buf->revision));
		FUNC1(ident_buf->serial, sizeof(ident_buf->serial));
	}
	FUNC2(ident_buf->model, sizeof(ident_buf->model));
	FUNC0(ident_buf->model, ident_buf->model, sizeof(ident_buf->model));
	FUNC2(ident_buf->revision, sizeof(ident_buf->revision));
	FUNC0(ident_buf->revision, ident_buf->revision, sizeof(ident_buf->revision));
	FUNC2(ident_buf->serial, sizeof(ident_buf->serial));
	FUNC0(ident_buf->serial, ident_buf->serial, sizeof(ident_buf->serial));
}