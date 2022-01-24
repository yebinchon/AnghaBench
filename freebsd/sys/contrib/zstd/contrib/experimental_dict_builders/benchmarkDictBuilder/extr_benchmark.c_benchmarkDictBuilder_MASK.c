#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sampleInfo ;
typedef  int /*<<< orphan*/  dictInfo ;
struct TYPE_17__ {unsigned int notificationLevel; unsigned int compressionLevel; } ;
struct TYPE_21__ {TYPE_1__ zParams; } ;
typedef  TYPE_5__ ZDICT_random_params_t ;
struct TYPE_19__ {unsigned int notificationLevel; unsigned int compressionLevel; } ;
struct TYPE_22__ {TYPE_3__ zParams; } ;
typedef  TYPE_6__ ZDICT_legacy_params_t ;
struct TYPE_20__ {unsigned int notificationLevel; unsigned int compressionLevel; } ;
struct TYPE_23__ {TYPE_4__ zParams; } ;
typedef  TYPE_7__ ZDICT_fastCover_params_t ;
struct TYPE_18__ {unsigned int notificationLevel; unsigned int compressionLevel; } ;
struct TYPE_24__ {TYPE_2__ zParams; } ;
typedef  TYPE_8__ ZDICT_cover_params_t ;
typedef  int /*<<< orphan*/  UTIL_time_t ;
typedef  double U64 ;

/* Variables and functions */
 unsigned int DEFAULT_CLEVEL ; 
 unsigned int DEFAULT_DISPLAYLEVEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,...) ; 
 scalar_t__ SEC_TO_MICRO ; 
 double FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 double FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int const,unsigned int const) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned int,TYPE_5__*,TYPE_8__*,TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(sampleInfo *srcInfo, unsigned maxDictSize, ZDICT_random_params_t *randomParam,
                        ZDICT_cover_params_t *coverParam, ZDICT_legacy_params_t *legacyParam,
                        ZDICT_fastCover_params_t *fastParam) {
  /* Local variables */
  const unsigned displayLevel = randomParam ? randomParam->zParams.notificationLevel :
                                coverParam ? coverParam->zParams.notificationLevel :
                                legacyParam ? legacyParam->zParams.notificationLevel :
                                fastParam ? fastParam->zParams.notificationLevel:
                                DEFAULT_DISPLAYLEVEL;   /* no dict */
  const char* name = randomParam ? "RANDOM" :
                    coverParam ? "COVER" :
                    legacyParam ? "LEGACY" :
                    fastParam ? "FAST":
                    "NODICT";    /* no dict */
  const unsigned cLevel = randomParam ? randomParam->zParams.compressionLevel :
                          coverParam ? coverParam->zParams.compressionLevel :
                          legacyParam ? legacyParam->zParams.compressionLevel :
                          fastParam ? fastParam->zParams.compressionLevel:
                          DEFAULT_CLEVEL;   /* no dict */
  int result = 0;

  /* Calculate speed */
  const UTIL_time_t begin = FUNC2();
  dictInfo* dInfo = FUNC4(srcInfo, maxDictSize, randomParam, coverParam, legacyParam, fastParam);
  const U64 timeMicro = FUNC1(begin);
  const double timeSec = timeMicro / (double)SEC_TO_MICRO;
  if (!dInfo) {
    FUNC0(1, "%s does not train successfully\n", name);
    result = 1;
    goto _cleanup;
  }
  FUNC0(1, "%s took %f seconds to execute \n", name, timeSec);

  /* Calculate compression ratio */
  const double cRatio = FUNC3(srcInfo, dInfo, cLevel, displayLevel);
  if (cRatio < 0) {
    FUNC0(1, "Compressing with %s dictionary does not work\n", name);
    result = 1;
    goto _cleanup;

  }
  FUNC0(1, "Compression ratio with %s dictionary is %f\n", name, cRatio);

_cleanup:
  FUNC5(dInfo);
  return result;
}