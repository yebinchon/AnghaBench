
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int t_Handle ;
typedef int t_Error ;


 int FM_MAC_NO_PFC ;
 int MemacSetTxPauseFrames (int ,int ,int ,int ) ;

__attribute__((used)) static t_Error MemacSetTxAutoPauseFrames(t_Handle h_Memac,
                                         uint16_t pauseTime)
{
    return MemacSetTxPauseFrames(h_Memac, FM_MAC_NO_PFC, pauseTime, 0);
}
