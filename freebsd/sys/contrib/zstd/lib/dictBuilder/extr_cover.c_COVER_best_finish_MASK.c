#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZDICT_cover_params_t ;
struct TYPE_6__ {size_t liveJobs; size_t compressedSize; size_t dictSize; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  parameters; int /*<<< orphan*/  dict; } ;
struct TYPE_5__ {size_t totalCompressedSize; size_t dictSize; void* dictContent; } ;
typedef  TYPE_1__ COVER_dictSelection_t ;
typedef  TYPE_2__ COVER_best_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,size_t) ; 

void FUNC8(COVER_best_t *best, ZDICT_cover_params_t parameters,
                              COVER_dictSelection_t selection) {
  void* dict = selection.dictContent;
  size_t compressedSize = selection.totalCompressedSize;
  size_t dictSize = selection.dictSize;
  if (!best) {
    return;
  }
  {
    size_t liveJobs;
    FUNC3(&best->mutex);
    --best->liveJobs;
    liveJobs = best->liveJobs;
    /* If the new dictionary is better */
    if (compressedSize < best->compressedSize) {
      /* Allocate space if necessary */
      if (!best->dict || best->dictSize < dictSize) {
        if (best->dict) {
          FUNC5(best->dict);
        }
        best->dict = FUNC6(dictSize);
        if (!best->dict) {
          best->compressedSize = FUNC0(GENERIC);
          best->dictSize = 0;
          FUNC2(&best->cond);
          FUNC4(&best->mutex);
          return;
        }
      }
      /* Save the dictionary, parameters, and size */
      if (dict) {
        FUNC7(best->dict, dict, dictSize);
        best->dictSize = dictSize;
        best->parameters = parameters;
        best->compressedSize = compressedSize;
      }
    }
    if (liveJobs == 0) {
      FUNC1(&best->cond);
    }
    FUNC4(&best->mutex);
  }
}