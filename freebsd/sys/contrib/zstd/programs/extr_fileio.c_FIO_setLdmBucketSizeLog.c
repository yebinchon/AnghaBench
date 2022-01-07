
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ldmBucketSizeLog; } ;
typedef TYPE_1__ FIO_prefs_t ;



void FIO_setLdmBucketSizeLog(FIO_prefs_t* const prefs, int ldmBucketSizeLog) {
    prefs->ldmBucketSizeLog = ldmBucketSizeLog;
}
