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
 unsigned char** ag_char_map_spanners ; 
 unsigned char* FUNC0 (unsigned int) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static inline char *
FUNC2(char const * s, char const * e, unsigned int mask_ix)
{
    unsigned char const * v = ag_char_map_spanners[mask_ix];
    if (v == NULL)
        v = FUNC0(mask_ix);
    if (s >= e) e = s + FUNC1(s);
    while ((e > s) && v[(unsigned char)e[-1]])  e--;
    return (char *)(uintptr_t)e;
}