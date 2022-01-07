
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int t_Handle ;
typedef int t_Error ;


 int DtsecSetTxPauseFrames (int ,int ,int ,int ) ;

__attribute__((used)) static t_Error DtsecTxMacPause(t_Handle h_Dtsec, uint16_t pauseTime)
{
    return DtsecSetTxPauseFrames(h_Dtsec, 0, pauseTime, 0);
}
