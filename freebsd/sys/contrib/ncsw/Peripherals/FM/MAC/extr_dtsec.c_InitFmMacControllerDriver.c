
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f_FM_MAC_MII_ReadPhyReg; int f_FM_MAC_MII_WritePhyReg; int f_FM_MAC_GetMaxFrameLength; int f_FM_MAC_GetVersion; int f_FM_MAC_GetId; int f_FM_MAC_RemovelExactMatchMacAddr; int f_FM_MAC_AddExactMatchMacAddr; int f_FM_MAC_RemoveHashMacAddr; int f_FM_MAC_AddHashMacAddr; int f_FM_MAC_ModifyMacAddr; int f_FM_MAC_GetStatistics; int f_FM_MAC_ResetCounters; int f_FM_MAC_SetRxIgnorePauseFrames; int f_FM_MAC_SetTxPauseFrames; int f_FM_MAC_SetTxAutoPauseFrames; int f_FM_MAC_Disable1588TimeStamp; int f_FM_MAC_Enable1588TimeStamp; int f_FM_MAC_RestartAutoneg; int f_FM_MAC_SetWakeOnLan; int f_FM_MAC_AdjustLink; int f_FM_MAC_SetPromiscuous; int f_FM_MAC_SetException; int * f_FM_MAC_Resume; int f_FM_MAC_Disable; int f_FM_MAC_Enable; int * f_FM_MAC_ConfigResetOnInit; int f_FM_MAC_ConfigException; int f_FM_MAC_ConfigTbiPhyAddr; int f_FM_MAC_ConfigLengthCheck; int f_FM_MAC_ConfigHalfDuplex; int f_FM_MAC_ConfigPadAndCrc; int * f_FM_MAC_ConfigWan; int f_FM_MAC_ConfigMaxFrameLength; int f_FM_MAC_ConfigLoopback; int f_FM_MAC_SetStatistics; int f_FM_MAC_Free; int f_FM_MAC_Init; } ;
typedef TYPE_1__ t_FmMacControllerDriver ;


 int DTSEC_MII_ReadPhyReg ;
 int DTSEC_MII_WritePhyReg ;
 int DtsecAddExactMatchMacAddress ;
 int DtsecAddHashMacAddress ;
 int DtsecAdjustLink ;
 int DtsecConfigException ;
 int DtsecConfigHalfDuplex ;
 int DtsecConfigLengthCheck ;
 int DtsecConfigLoopback ;
 int DtsecConfigMaxFrameLength ;
 int DtsecConfigPadAndCrc ;
 int DtsecConfigTbiPhyAddr ;
 int DtsecDelExactMatchMacAddress ;
 int DtsecDelHashMacAddress ;
 int DtsecDisable ;
 int DtsecDisable1588TimeStamp ;
 int DtsecEnable ;
 int DtsecEnable1588TimeStamp ;
 int DtsecFree ;
 int DtsecGetId ;
 int DtsecGetMaxFrameLength ;
 int DtsecGetStatistics ;
 int DtsecGetVersion ;
 int DtsecInit ;
 int DtsecModifyMacAddress ;
 int DtsecResetCounters ;
 int DtsecRestartAutoneg ;
 int DtsecRxIgnoreMacPause ;
 int DtsecSetException ;
 int DtsecSetPromiscuous ;
 int DtsecSetStatistics ;
 int DtsecSetTxPauseFrames ;
 int DtsecSetWakeOnLan ;
 int DtsecTxMacPause ;

__attribute__((used)) static void InitFmMacControllerDriver(t_FmMacControllerDriver *p_FmMacControllerDriver)
{
    p_FmMacControllerDriver->f_FM_MAC_Init = DtsecInit;
    p_FmMacControllerDriver->f_FM_MAC_Free = DtsecFree;

    p_FmMacControllerDriver->f_FM_MAC_SetStatistics = DtsecSetStatistics;
    p_FmMacControllerDriver->f_FM_MAC_ConfigLoopback = DtsecConfigLoopback;
    p_FmMacControllerDriver->f_FM_MAC_ConfigMaxFrameLength = DtsecConfigMaxFrameLength;

    p_FmMacControllerDriver->f_FM_MAC_ConfigWan = ((void*)0);

    p_FmMacControllerDriver->f_FM_MAC_ConfigPadAndCrc = DtsecConfigPadAndCrc;
    p_FmMacControllerDriver->f_FM_MAC_ConfigHalfDuplex = DtsecConfigHalfDuplex;
    p_FmMacControllerDriver->f_FM_MAC_ConfigLengthCheck = DtsecConfigLengthCheck;
    p_FmMacControllerDriver->f_FM_MAC_ConfigTbiPhyAddr = DtsecConfigTbiPhyAddr;
    p_FmMacControllerDriver->f_FM_MAC_ConfigException = DtsecConfigException;
    p_FmMacControllerDriver->f_FM_MAC_ConfigResetOnInit = ((void*)0);

    p_FmMacControllerDriver->f_FM_MAC_Enable = DtsecEnable;
    p_FmMacControllerDriver->f_FM_MAC_Disable = DtsecDisable;
    p_FmMacControllerDriver->f_FM_MAC_Resume = ((void*)0);

    p_FmMacControllerDriver->f_FM_MAC_SetException = DtsecSetException;

    p_FmMacControllerDriver->f_FM_MAC_SetPromiscuous = DtsecSetPromiscuous;
    p_FmMacControllerDriver->f_FM_MAC_AdjustLink = DtsecAdjustLink;
    p_FmMacControllerDriver->f_FM_MAC_SetWakeOnLan = DtsecSetWakeOnLan;
    p_FmMacControllerDriver->f_FM_MAC_RestartAutoneg = DtsecRestartAutoneg;

    p_FmMacControllerDriver->f_FM_MAC_Enable1588TimeStamp = DtsecEnable1588TimeStamp;
    p_FmMacControllerDriver->f_FM_MAC_Disable1588TimeStamp = DtsecDisable1588TimeStamp;

    p_FmMacControllerDriver->f_FM_MAC_SetTxAutoPauseFrames = DtsecTxMacPause;
    p_FmMacControllerDriver->f_FM_MAC_SetTxPauseFrames = DtsecSetTxPauseFrames;
    p_FmMacControllerDriver->f_FM_MAC_SetRxIgnorePauseFrames = DtsecRxIgnoreMacPause;

    p_FmMacControllerDriver->f_FM_MAC_ResetCounters = DtsecResetCounters;
    p_FmMacControllerDriver->f_FM_MAC_GetStatistics = DtsecGetStatistics;

    p_FmMacControllerDriver->f_FM_MAC_ModifyMacAddr = DtsecModifyMacAddress;
    p_FmMacControllerDriver->f_FM_MAC_AddHashMacAddr = DtsecAddHashMacAddress;
    p_FmMacControllerDriver->f_FM_MAC_RemoveHashMacAddr = DtsecDelHashMacAddress;
    p_FmMacControllerDriver->f_FM_MAC_AddExactMatchMacAddr = DtsecAddExactMatchMacAddress;
    p_FmMacControllerDriver->f_FM_MAC_RemovelExactMatchMacAddr = DtsecDelExactMatchMacAddress;
    p_FmMacControllerDriver->f_FM_MAC_GetId = DtsecGetId;
    p_FmMacControllerDriver->f_FM_MAC_GetVersion = DtsecGetVersion;
    p_FmMacControllerDriver->f_FM_MAC_GetMaxFrameLength = DtsecGetMaxFrameLength;

    p_FmMacControllerDriver->f_FM_MAC_MII_WritePhyReg = DTSEC_MII_WritePhyReg;
    p_FmMacControllerDriver->f_FM_MAC_MII_ReadPhyReg = DTSEC_MII_ReadPhyReg;

}
