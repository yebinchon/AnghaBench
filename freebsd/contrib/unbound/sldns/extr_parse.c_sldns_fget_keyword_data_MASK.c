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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char const*,char*,char const*,size_t,int /*<<< orphan*/ *) ; 

ssize_t
FUNC1(FILE *f, const char *keyword, const char *k_del, char *data,
               const char *d_del, size_t data_limit)
{
       return FUNC0(f, keyword, k_del, data, d_del,
		       data_limit, NULL);
}