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
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
typedef  int apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 

char *FUNC2(serf_bucket_alloc_t *allocator,
                      const char *str,
                      apr_size_t size)
{
    char *newstr = FUNC1(allocator, size + 1);
    FUNC0(newstr, str, size);
    newstr[size] = '\0';
    return newstr;
}