
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tOptions ;
typedef int tOptDesc ;


 int OPT_VALUE_SET_DEBUG_LEVEL ;

__attribute__((used)) static void
doOptDebug_Level(tOptions* pOptions, tOptDesc* pOptDesc)
{







OPT_VALUE_SET_DEBUG_LEVEL++;
    (void)pOptDesc;
    (void)pOptions;
}
