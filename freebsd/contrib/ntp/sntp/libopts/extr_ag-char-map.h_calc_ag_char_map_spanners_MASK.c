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
typedef  int ag_char_map_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int* ag_char_map_masks ; 
 int /*<<< orphan*/  ag_char_map_mutex ; 
 unsigned char const** ag_char_map_spanners ; 
 int* ag_char_map_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static unsigned char const *
FUNC7(unsigned int mask_ix)
{
#ifdef LOCK_SPANNER_TABLES
    if (ag_char_map_spanners[mask_ix] != NULL)
        return ag_char_map_spanners[mask_ix];

    pthread_mutex_lock(&ag_char_map_mutex);
    if (ag_char_map_spanners[mask_ix] == NULL)
#endif
    {
        int ix = 1;
        ag_char_map_mask_t mask = ag_char_map_masks[mask_ix];
        unsigned char * res = FUNC3(256 /* 1 << NBBY */);
        if (res == NULL) {
            FUNC2(FUNC0("no memory for char-mapper span map\n"), stderr);
            FUNC1(EXIT_FAILURE);
        }

        FUNC4(res, 0, 256);
        for (; ix < 128; ix++)
            if (ag_char_map_table[ix] & mask)
                res[ix] = 1;
        ag_char_map_spanners[mask_ix] = res;
    }
#ifdef LOCK_SPANNER_TABLES
    pthread_mutex_unlock(&ag_char_map_mutex);
#endif
    return ag_char_map_spanners[mask_ix];
}