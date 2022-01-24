#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int U32 ;
struct TYPE_3__ {int num; int size; } ;
typedef  TYPE_1__ COVER_epoch_info_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int const,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

COVER_epoch_info_t FUNC3(U32 maxDictSize,
                                       U32 nbDmers, U32 k, U32 passes)
{
  const U32 minEpochSize = k * 10;
  COVER_epoch_info_t epochs;
  epochs.num = FUNC0(1, maxDictSize / k / passes);
  epochs.size = nbDmers / epochs.num;
  if (epochs.size >= minEpochSize) {
      FUNC2(epochs.size * epochs.num <= nbDmers);
      return epochs;
  }
  epochs.size = FUNC1(minEpochSize, nbDmers);
  epochs.num = nbDmers / epochs.size;
  FUNC2(epochs.size * epochs.num <= nbDmers);
  return epochs;
}