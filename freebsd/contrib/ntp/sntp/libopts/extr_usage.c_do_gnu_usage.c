
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fOptSet; } ;
typedef TYPE_1__ tOptions ;


 int OPTPROC_GNUUSAGE ;

__attribute__((used)) static inline bool
do_gnu_usage(tOptions * pOpts)
{
    return (pOpts->fOptSet & OPTPROC_GNUUSAGE) ? 1 : 0;
}
