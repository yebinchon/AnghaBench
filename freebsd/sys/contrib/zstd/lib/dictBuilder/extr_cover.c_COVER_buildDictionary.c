
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int d; int k; } ;
typedef TYPE_1__ ZDICT_cover_params_t ;
typedef size_t U32 ;
struct TYPE_14__ {int samples; scalar_t__ suffixSize; } ;
struct TYPE_13__ {int num; size_t size; } ;
struct TYPE_12__ {scalar_t__ score; int end; int begin; } ;
typedef TYPE_2__ COVER_segment_t ;
typedef int COVER_map_t ;
typedef TYPE_3__ COVER_epoch_info_t ;
typedef TYPE_4__ COVER_ctx_t ;
typedef int BYTE ;


 TYPE_3__ COVER_computeEpochs (size_t,size_t,int ,int) ;
 TYPE_2__ COVER_selectSegment (TYPE_4__ const*,size_t*,int *,size_t const,size_t const,TYPE_1__) ;
 int DISPLAYLEVEL (int,char*,...) ;
 int DISPLAYUPDATE (int,char*,unsigned int) ;
 size_t MAX (int,size_t) ;
 size_t MIN (int,size_t) ;
 int memcpy (int * const,int,size_t) ;

__attribute__((used)) static size_t COVER_buildDictionary(const COVER_ctx_t *ctx, U32 *freqs,
                                    COVER_map_t *activeDmers, void *dictBuffer,
                                    size_t dictBufferCapacity,
                                    ZDICT_cover_params_t parameters) {
  BYTE *const dict = (BYTE *)dictBuffer;
  size_t tail = dictBufferCapacity;

  const COVER_epoch_info_t epochs = COVER_computeEpochs(
      (U32)dictBufferCapacity, (U32)ctx->suffixSize, parameters.k, 4);
  const size_t maxZeroScoreRun = MAX(10, MIN(100, epochs.num >> 3));
  size_t zeroScoreRun = 0;
  size_t epoch;
  DISPLAYLEVEL(2, "Breaking content into %u epochs of size %u\n",
                (U32)epochs.num, (U32)epochs.size);



  for (epoch = 0; tail > 0; epoch = (epoch + 1) % epochs.num) {
    const U32 epochBegin = (U32)(epoch * epochs.size);
    const U32 epochEnd = epochBegin + epochs.size;
    size_t segmentSize;

    COVER_segment_t segment = COVER_selectSegment(
        ctx, freqs, activeDmers, epochBegin, epochEnd, parameters);



    if (segment.score == 0) {
      if (++zeroScoreRun >= maxZeroScoreRun) {
          break;
      }
      continue;
    }
    zeroScoreRun = 0;

    segmentSize = MIN(segment.end - segment.begin + parameters.d - 1, tail);
    if (segmentSize < parameters.d) {
      break;
    }



    tail -= segmentSize;
    memcpy(dict + tail, ctx->samples + segment.begin, segmentSize);
    DISPLAYUPDATE(
        2, "\r%u%%       ",
        (unsigned)(((dictBufferCapacity - tail) * 100) / dictBufferCapacity));
  }
  DISPLAYLEVEL(2, "\r%79s\r", "");
  return tail;
}
