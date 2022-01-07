
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * AslGbl_DefineList ;
 int PrInitializeGlobals () ;

void
PrInitializePreprocessor (
    void)
{


    PrInitializeGlobals ();
    AslGbl_DefineList = ((void*)0);
}
