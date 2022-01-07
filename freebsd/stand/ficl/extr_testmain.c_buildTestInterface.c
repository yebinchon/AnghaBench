
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_SYSTEM ;


 int FW_DEFAULT ;
 int clocksPerSec ;
 int execxt ;
 int ficlBreak ;
 int ficlBuild (int *,char*,int ,int ) ;
 int ficlChDir ;
 int ficlClock ;
 int ficlGetCWD ;
 int ficlLoad ;
 int ficlSystem ;
 int spewHash ;

void buildTestInterface(FICL_SYSTEM *pSys)
{
    ficlBuild(pSys, "break", ficlBreak, FW_DEFAULT);
    ficlBuild(pSys, "clock", ficlClock, FW_DEFAULT);
    ficlBuild(pSys, "cd", ficlChDir, FW_DEFAULT);
    ficlBuild(pSys, "execxt", execxt, FW_DEFAULT);
    ficlBuild(pSys, "load", ficlLoad, FW_DEFAULT);
    ficlBuild(pSys, "pwd", ficlGetCWD, FW_DEFAULT);
    ficlBuild(pSys, "system", ficlSystem, FW_DEFAULT);
    ficlBuild(pSys, "spewhash", spewHash, FW_DEFAULT);
    ficlBuild(pSys, "clocks/sec",
                                clocksPerSec, FW_DEFAULT);

    return;
}
