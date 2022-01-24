#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int d; int /*<<< orphan*/  k; } ;
typedef  TYPE_1__ ZDICT_cover_params_t ;
typedef  size_t U32 ;
struct TYPE_14__ {int samples; scalar_t__ suffixSize; } ;
struct TYPE_13__ {int num; size_t size; } ;
struct TYPE_12__ {scalar_t__ score; int end; int begin; } ;
typedef  TYPE_2__ COVER_segment_t ;
typedef  int /*<<< orphan*/  COVER_map_t ;
typedef  TYPE_3__ COVER_epoch_info_t ;
typedef  TYPE_4__ COVER_ctx_t ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 TYPE_3__ FUNC0 (size_t,size_t,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ FUNC1 (TYPE_4__ const*,size_t*,int /*<<< orphan*/ *,size_t const,size_t const,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,unsigned int) ; 
 size_t FUNC4 (int,size_t) ; 
 size_t FUNC5 (int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ * const,int,size_t) ; 

__attribute__((used)) static size_t FUNC7(const COVER_ctx_t *ctx, U32 *freqs,
                                    COVER_map_t *activeDmers, void *dictBuffer,
                                    size_t dictBufferCapacity,
                                    ZDICT_cover_params_t parameters) {
  BYTE *const dict = (BYTE *)dictBuffer;
  size_t tail = dictBufferCapacity;
  /* Divide the data into epochs. We will select one segment from each epoch. */
  const COVER_epoch_info_t epochs = FUNC0(
      (U32)dictBufferCapacity, (U32)ctx->suffixSize, parameters.k, 4);
  const size_t maxZeroScoreRun = FUNC4(10, FUNC5(100, epochs.num >> 3));
  size_t zeroScoreRun = 0;
  size_t epoch;
  FUNC2(2, "Breaking content into %u epochs of size %u\n",
                (U32)epochs.num, (U32)epochs.size);
  /* Loop through the epochs until there are no more segments or the dictionary
   * is full.
   */
  for (epoch = 0; tail > 0; epoch = (epoch + 1) % epochs.num) {
    const U32 epochBegin = (U32)(epoch * epochs.size);
    const U32 epochEnd = epochBegin + epochs.size;
    size_t segmentSize;
    /* Select a segment */
    COVER_segment_t segment = FUNC1(
        ctx, freqs, activeDmers, epochBegin, epochEnd, parameters);
    /* If the segment covers no dmers, then we are out of content.
     * There may be new content in other epochs, for continue for some time.
     */
    if (segment.score == 0) {
      if (++zeroScoreRun >= maxZeroScoreRun) {
          break;
      }
      continue;
    }
    zeroScoreRun = 0;
    /* Trim the segment if necessary and if it is too small then we are done */
    segmentSize = FUNC5(segment.end - segment.begin + parameters.d - 1, tail);
    if (segmentSize < parameters.d) {
      break;
    }
    /* We fill the dictionary from the back to allow the best segments to be
     * referenced with the smallest offsets.
     */
    tail -= segmentSize;
    FUNC6(dict + tail, ctx->samples + segment.begin, segmentSize);
    FUNC3(
        2, "\r%u%%       ",
        (unsigned)(((dictBufferCapacity - tail) * 100) / dictBufferCapacity));
  }
  FUNC2(2, "\r%79s\r", "");
  return tail;
}