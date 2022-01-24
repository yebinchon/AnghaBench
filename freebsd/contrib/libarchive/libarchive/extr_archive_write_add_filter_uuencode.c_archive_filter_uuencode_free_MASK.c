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
struct private_uuencode {int /*<<< orphan*/  encoded_buff; int /*<<< orphan*/  name; } ;
struct archive_write_filter {scalar_t__ data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct private_uuencode*) ; 

__attribute__((used)) static int
FUNC2(struct archive_write_filter *f)
{
	struct private_uuencode *state = (struct private_uuencode *)f->data;

	FUNC0(&state->name);
	FUNC0(&state->encoded_buff);
	FUNC1(state);
	return (ARCHIVE_OK);
}