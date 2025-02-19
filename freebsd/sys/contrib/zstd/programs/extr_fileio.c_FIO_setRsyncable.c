
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nbWorkers; int rsyncable; } ;
typedef TYPE_1__ FIO_prefs_t ;


 int EXM_THROW (int,char*) ;

void FIO_setRsyncable(FIO_prefs_t* const prefs, int rsyncable) {
    if ((rsyncable>0) && (prefs->nbWorkers==0))
        EXM_THROW(1, "Rsyncable mode is not compatible with single thread mode \n");
    prefs->rsyncable = rsyncable;
}
