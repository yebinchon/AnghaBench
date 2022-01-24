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
typedef  int /*<<< orphan*/  uint32_t ;
struct umutex {int dummy; } ;
struct timespec {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct umutex*,int /*<<< orphan*/ ,struct timespec const*) ; 
 scalar_t__ FUNC1 (struct umutex*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC2(struct umutex *mtx, uint32_t id,
    const struct timespec *timeout)
{

	if (FUNC1(mtx, id) == 0)
		return (0);
	return (FUNC0(mtx, id, timeout));
}