
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int notificationLevel; } ;
struct TYPE_8__ {TYPE_1__ zParams; } ;
typedef TYPE_2__ ZDICT_random_params_t ;
typedef int U32 ;
struct TYPE_9__ {int end; int begin; } ;
typedef TYPE_3__ RANDOM_segment_t ;
typedef int BYTE ;


 int DISPLAYUPDATE (int,char*,int ) ;
 size_t MIN (int,size_t) ;
 TYPE_3__ RANDOM_selectSegment (size_t const,TYPE_2__) ;
 int memcpy (int * const,int const*,size_t) ;

__attribute__((used)) static size_t RANDOM_buildDictionary(const size_t totalSamplesSize, const BYTE *samples,
                                    void *dictBuffer, size_t dictBufferCapacity,
                                    ZDICT_random_params_t parameters) {
    BYTE *const dict = (BYTE *)dictBuffer;
    size_t tail = dictBufferCapacity;
    const int displayLevel = parameters.zParams.notificationLevel;
    while (tail > 0) {


      RANDOM_segment_t segment = RANDOM_selectSegment(totalSamplesSize, parameters);

      size_t segmentSize;
      segmentSize = MIN(segment.end - segment.begin + 1, tail);

      tail -= segmentSize;
      memcpy(dict + tail, samples + segment.begin, segmentSize);
      DISPLAYUPDATE(
          2, "\r%u%%       ",
          (U32)(((dictBufferCapacity - tail) * 100) / dictBufferCapacity));
    }

    return tail;
}
