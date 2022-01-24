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
struct data {size_t i; size_t* data; int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  POOL_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,struct data*) ; 
 int /*<<< orphan*/ * FUNC4 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fn ; 

__attribute__((used)) static int FUNC8(size_t numThreads, size_t queueSize)
{
  struct data data;
  POOL_ctx* const ctx = FUNC4(numThreads, queueSize);
  FUNC2(ctx);
  data.i = 0;
  FUNC1(FUNC7(&data.mutex, NULL));
  { size_t i;
    for (i = 0; i < 16; ++i) {
      FUNC3(ctx, &fn, &data);
    }
  }
  FUNC5(ctx);
  FUNC0(16, data.i);
  { size_t i;
    for (i = 0; i < data.i; ++i) {
      FUNC0(i, data.data[i]);
    }
  }
  FUNC6(&data.mutex);
  return 0;
}