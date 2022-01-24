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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*,size_t,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static inline void FUNC5(void *v, size_t n)
{
#if defined(_WIN32) || defined(WIN32)
  SecureZeroMemory(v, n);
#else
// prioritize first the general C11 call
#if defined(HAVE_MEMSET_S)
  memset_s(v, n, 0, n);
#elif defined(HAVE_EXPLICIT_BZERO)
  explicit_bzero(v, n);
#elif defined(HAVE_EXPLICIT_MEMSET)
  explicit_memset(v, 0, n);
#else
  FUNC3(v, 0, n);
  __asm__ __volatile__("" :: "r"(v) : "memory");
#endif
#endif
}