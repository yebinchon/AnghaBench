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
struct private_data {struct private_data* out_block; } ;
struct archive_read_filter {scalar_t__ data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct private_data*) ; 

__attribute__((used)) static int
FUNC1(struct archive_read_filter *self)
{
	struct private_data *state = (struct private_data *)self->data;

	FUNC0(state->out_block);
	FUNC0(state);
	return (ARCHIVE_OK);
}