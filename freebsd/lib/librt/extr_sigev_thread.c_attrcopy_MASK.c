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
struct sched_param {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC14(pthread_attr_t *src, pthread_attr_t *dst)
{
	struct sched_param sched;
	void *a;
	size_t u;
	int v;

	FUNC3(src, &v);
	FUNC10(dst, v);

	FUNC1(src, &v);
	FUNC8(dst, v);

	FUNC2(src, &sched);
	FUNC9(dst, &sched);

	FUNC4(src, &v);
	FUNC11(dst, v);

	FUNC6(src, &u);
	FUNC13(dst, u);

	FUNC5(src, &a);
	FUNC12(src, a);

	FUNC0(src, &u);
	FUNC7(dst, u);
}