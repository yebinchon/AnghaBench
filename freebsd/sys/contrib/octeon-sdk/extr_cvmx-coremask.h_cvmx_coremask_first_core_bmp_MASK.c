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
struct cvmx_coremask {int* coremask_bitmap; } ;

/* Variables and functions */
 int CVMX_COREMASK_BMPSZ ; 
 int CVMX_COREMASK_HLDRSZ ; 
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static inline int FUNC1(struct cvmx_coremask *pcm)
{
     int n, i;

     n = (int) FUNC0();
     for (i = 0; i < CVMX_COREMASK_BMPSZ; i++)
     {
         if (pcm->coremask_bitmap[i])
         {
             if (n == 0 && pcm->coremask_bitmap[i] & 1)
                 return 1;

             if (n >= CVMX_COREMASK_HLDRSZ)
                 return 0;

             return ((((1ull << n) - 1) & pcm->coremask_bitmap[i]) == 0);
         }
         else
             n -= CVMX_COREMASK_HLDRSZ;
     }

     return 0;
}