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
struct sockaddr_in {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  _res ; 
 int FUNC0 (int /*<<< orphan*/ *,struct sockaddr_in const*) ; 

int
FUNC1(const struct sockaddr_in *inp) {
	return (FUNC0(&_res, inp));
}