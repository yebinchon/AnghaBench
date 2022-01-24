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
struct stat {int /*<<< orphan*/  st_size; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,struct stat*) ; 

__attribute__((used)) static off_t
FUNC2(const char * restrict fname)
{
	struct stat st;
	int err;

	err = FUNC1(fname, &st);
	FUNC0(err == 0);
	return st.st_size;
}