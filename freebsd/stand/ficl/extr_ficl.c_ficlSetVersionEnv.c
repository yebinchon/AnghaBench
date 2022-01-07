
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_SYSTEM ;


 int FICL_ROBUST ;
 int FICL_VER_MAJOR ;
 int FICL_VER_MINOR ;
 int ficlSetEnv (int *,char*,int ) ;
 int ficlSetEnvD (int *,char*,int ,int ) ;

__attribute__((used)) static void ficlSetVersionEnv(FICL_SYSTEM *pSys)
{
    ficlSetEnvD(pSys, "ficl-version", FICL_VER_MAJOR, FICL_VER_MINOR);
    ficlSetEnv (pSys, "ficl-robust", FICL_ROBUST);
    return;
}
