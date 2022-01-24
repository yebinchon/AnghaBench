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
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const**,size_t*,size_t,unsigned int) ; 

__attribute__((used)) static int FUNC2(const unsigned char *pattern, size_t pattern_len,
                      const unsigned char *subject, size_t subject_len,
                      unsigned int flags)
{
    FUNC1(&pattern, &pattern_len, subject_len, flags);
    if (pattern_len != subject_len)
        return 0;
    return !FUNC0(pattern, subject, pattern_len);
}