#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ d; scalar_t__ k; } ;
typedef  TYPE_1__ ZDICT_cover_params_t ;
struct TYPE_16__ {size_t dictBufferCapacity; int /*<<< orphan*/  best; TYPE_1__ parameters; TYPE_4__* ctx; } ;
typedef  TYPE_2__ U32 ;
struct TYPE_17__ {int suffixSize; int /*<<< orphan*/  offsets; int /*<<< orphan*/  nbSamples; scalar_t__ nbTrainSamples; int /*<<< orphan*/  samplesSizes; int /*<<< orphan*/  samples; int /*<<< orphan*/  freqs; } ;
typedef  TYPE_2__ COVER_tryParameters_data_t ;
typedef  int /*<<< orphan*/  COVER_map_t ;
typedef  int /*<<< orphan*/  COVER_dictSelection_t ;
typedef  TYPE_4__ COVER_ctx_t ;
typedef  TYPE_2__ BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__ const,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (TYPE_4__ const* const,TYPE_2__*,int /*<<< orphan*/ *,TYPE_2__* const,size_t,TYPE_1__ const) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__* const,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,scalar_t__,int /*<<< orphan*/ ,TYPE_1__ const,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__* const) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(void *opaque) {
  /* Save parameters as local variables */
  COVER_tryParameters_data_t *const data = (COVER_tryParameters_data_t *)opaque;
  const COVER_ctx_t *const ctx = data->ctx;
  const ZDICT_cover_params_t parameters = data->parameters;
  size_t dictBufferCapacity = data->dictBufferCapacity;
  size_t totalCompressedSize = FUNC9(GENERIC);
  /* Allocate space for hash table, dict, and freqs */
  COVER_map_t activeDmers;
  BYTE *const dict = (BYTE * const)FUNC11(dictBufferCapacity);
  COVER_dictSelection_t selection = FUNC2(FUNC9(GENERIC));
  U32 *freqs = (U32 *)FUNC11(ctx->suffixSize * sizeof(U32));
  if (!FUNC6(&activeDmers, parameters.k - parameters.d + 1)) {
    FUNC8(1, "Failed to allocate dmer map: out of memory\n");
    goto _cleanup;
  }
  if (!dict || !freqs) {
    FUNC8(1, "Failed to allocate buffers: out of memory\n");
    goto _cleanup;
  }
  /* Copy the frequencies because we need to modify them */
  FUNC12(freqs, ctx->freqs, ctx->suffixSize * sizeof(U32));
  /* Build the dictionary */
  {
    const size_t tail = FUNC1(ctx, freqs, &activeDmers, dict,
                                              dictBufferCapacity, parameters);
    selection = FUNC7(dict + tail, dictBufferCapacity - tail,
        ctx->samples, ctx->samplesSizes, (unsigned)ctx->nbTrainSamples, ctx->nbTrainSamples, ctx->nbSamples, parameters, ctx->offsets,
        totalCompressedSize);

    if (FUNC4(selection)) {
      FUNC8(1, "Failed to select dictionary\n");
      goto _cleanup;
    }
  }
_cleanup:
  FUNC10(dict);
  FUNC0(data->best, parameters, selection);
  FUNC10(data);
  FUNC5(&activeDmers);
  FUNC3(selection);
  if (freqs) {
    FUNC10(freqs);
  }
}