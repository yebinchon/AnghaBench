#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int notificationLevel; } ;
struct TYPE_8__ {TYPE_1__ zParams; } ;
typedef  TYPE_2__ ZDICT_random_params_t ;
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_9__ {int end; int begin; } ;
typedef  TYPE_3__ RANDOM_segment_t ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int,size_t) ; 
 TYPE_3__ FUNC2 (size_t const,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static size_t FUNC4(const size_t totalSamplesSize, const BYTE *samples,
                                    void *dictBuffer, size_t dictBufferCapacity,
                                    ZDICT_random_params_t parameters) {
    BYTE *const dict = (BYTE *)dictBuffer;
    size_t tail = dictBufferCapacity;
    const int displayLevel = parameters.zParams.notificationLevel;
    while (tail > 0) {

      /* Select a segment */
      RANDOM_segment_t segment = FUNC2(totalSamplesSize, parameters);

      size_t segmentSize;
      segmentSize = FUNC1(segment.end - segment.begin + 1, tail);

      tail -= segmentSize;
      FUNC3(dict + tail, samples + segment.begin, segmentSize);
      FUNC0(
          2, "\r%u%%       ",
          (U32)(((dictBufferCapacity - tail) * 100) / dictBufferCapacity));
    }

    return tail;
}