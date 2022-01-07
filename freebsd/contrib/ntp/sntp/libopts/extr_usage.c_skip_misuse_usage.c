
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fOptSet; } ;
typedef TYPE_1__ tOptions ;


 int OPTPROC_MISUSE ;

__attribute__((used)) static inline bool
skip_misuse_usage(tOptions * pOpts)
{
    return (pOpts->fOptSet & OPTPROC_MISUSE) ? 1 : 0;
}
