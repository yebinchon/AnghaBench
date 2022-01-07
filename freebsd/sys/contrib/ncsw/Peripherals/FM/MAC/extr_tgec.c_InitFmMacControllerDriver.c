
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f_FM_MAC_MII_ReadPhyReg; int f_FM_MAC_MII_WritePhyReg; int f_FM_MAC_GetMaxFrameLength; int f_FM_MAC_GetVersion; int f_FM_MAC_GetId; int f_FM_MAC_RemovelExactMatchMacAddr; int f_FM_MAC_AddExactMatchMacAddr; int f_FM_MAC_RemoveHashMacAddr; int f_FM_MAC_AddHashMacAddr; int f_FM_MAC_ModifyMacAddr; int f_FM_MAC_GetStatistics; int f_FM_MAC_ResetCounters; int f_FM_MAC_SetRxIgnorePauseFrames; int f_FM_MAC_SetTxPauseFrames; int f_FM_MAC_SetTxAutoPauseFrames; int * f_FM_MAC_Resume; int f_FM_MAC_Disable; int f_FM_MAC_Enable; int * f_FM_MAC_RestartAutoneg; int * f_FM_MAC_SetWakeOnLan; int * f_FM_MAC_AdjustLink; int f_FM_MAC_SetPromiscuous; int f_FM_MAC_Disable1588TimeStamp; int f_FM_MAC_Enable1588TimeStamp; int f_FM_MAC_SetException; int f_FM_MAC_ConfigSkipFman11Workaround; int * f_FM_MAC_ConfigResetOnInit; int f_FM_MAC_ConfigException; int f_FM_MAC_ConfigLengthCheck; int * f_FM_MAC_ConfigHalfDuplex; int * f_FM_MAC_ConfigPadAndCrc; int f_FM_MAC_ConfigWan; int f_FM_MAC_ConfigMaxFrameLength; int f_FM_MAC_ConfigLoopback; int * f_FM_MAC_SetStatistics; int f_FM_MAC_Free; int f_FM_MAC_Init; } ;
typedef TYPE_1__ t_FmMacControllerDriver ;


 int TGEC_MII_ReadPhyReg ;
 int TGEC_MII_WritePhyReg ;
 int TgecAddExactMatchMacAddress ;
 int TgecAddHashMacAddress ;
 int TgecConfigException ;
 int TgecConfigLengthCheck ;
 int TgecConfigLoopback ;
 int TgecConfigMaxFrameLength ;
 int TgecConfigSkipFman11Workaround ;
 int TgecConfigWan ;
 int TgecDelExactMatchMacAddress ;
 int TgecDelHashMacAddress ;
 int TgecDisable ;
 int TgecDisable1588TimeStamp ;
 int TgecEnable ;
 int TgecEnable1588TimeStamp ;
 int TgecFree ;
 int TgecGetId ;
 int TgecGetMaxFrameLength ;
 int TgecGetStatistics ;
 int TgecGetVersion ;
 int TgecInit ;
 int TgecModifyMacAddress ;
 int TgecResetCounters ;
 int TgecRxIgnoreMacPause ;
 int TgecSetExcpetion ;
 int TgecSetPromiscuous ;
 int TgecSetTxPauseFrames ;
 int TgecTxMacPause ;

__attribute__((used)) static void InitFmMacControllerDriver(t_FmMacControllerDriver *p_FmMacControllerDriver)
{
    p_FmMacControllerDriver->f_FM_MAC_Init = TgecInit;
    p_FmMacControllerDriver->f_FM_MAC_Free = TgecFree;

    p_FmMacControllerDriver->f_FM_MAC_SetStatistics = ((void*)0);
    p_FmMacControllerDriver->f_FM_MAC_ConfigLoopback = TgecConfigLoopback;
    p_FmMacControllerDriver->f_FM_MAC_ConfigMaxFrameLength = TgecConfigMaxFrameLength;

    p_FmMacControllerDriver->f_FM_MAC_ConfigWan = TgecConfigWan;

    p_FmMacControllerDriver->f_FM_MAC_ConfigPadAndCrc = ((void*)0);
    p_FmMacControllerDriver->f_FM_MAC_ConfigHalfDuplex = ((void*)0);
    p_FmMacControllerDriver->f_FM_MAC_ConfigLengthCheck = TgecConfigLengthCheck;
    p_FmMacControllerDriver->f_FM_MAC_ConfigException = TgecConfigException;
    p_FmMacControllerDriver->f_FM_MAC_ConfigResetOnInit = ((void*)0);





    p_FmMacControllerDriver->f_FM_MAC_SetException = TgecSetExcpetion;

    p_FmMacControllerDriver->f_FM_MAC_Enable1588TimeStamp = TgecEnable1588TimeStamp;
    p_FmMacControllerDriver->f_FM_MAC_Disable1588TimeStamp = TgecDisable1588TimeStamp;

    p_FmMacControllerDriver->f_FM_MAC_SetPromiscuous = TgecSetPromiscuous;
    p_FmMacControllerDriver->f_FM_MAC_AdjustLink = ((void*)0);
    p_FmMacControllerDriver->f_FM_MAC_SetWakeOnLan = ((void*)0);
    p_FmMacControllerDriver->f_FM_MAC_RestartAutoneg = ((void*)0);

    p_FmMacControllerDriver->f_FM_MAC_Enable = TgecEnable;
    p_FmMacControllerDriver->f_FM_MAC_Disable = TgecDisable;
    p_FmMacControllerDriver->f_FM_MAC_Resume = ((void*)0);

    p_FmMacControllerDriver->f_FM_MAC_SetTxAutoPauseFrames = TgecTxMacPause;
    p_FmMacControllerDriver->f_FM_MAC_SetTxPauseFrames = TgecSetTxPauseFrames;
    p_FmMacControllerDriver->f_FM_MAC_SetRxIgnorePauseFrames = TgecRxIgnoreMacPause;

    p_FmMacControllerDriver->f_FM_MAC_ResetCounters = TgecResetCounters;
    p_FmMacControllerDriver->f_FM_MAC_GetStatistics = TgecGetStatistics;

    p_FmMacControllerDriver->f_FM_MAC_ModifyMacAddr = TgecModifyMacAddress;
    p_FmMacControllerDriver->f_FM_MAC_AddHashMacAddr = TgecAddHashMacAddress;
    p_FmMacControllerDriver->f_FM_MAC_RemoveHashMacAddr = TgecDelHashMacAddress;
    p_FmMacControllerDriver->f_FM_MAC_AddExactMatchMacAddr = TgecAddExactMatchMacAddress;
    p_FmMacControllerDriver->f_FM_MAC_RemovelExactMatchMacAddr = TgecDelExactMatchMacAddress;
    p_FmMacControllerDriver->f_FM_MAC_GetId = TgecGetId;
    p_FmMacControllerDriver->f_FM_MAC_GetVersion = TgecGetVersion;
    p_FmMacControllerDriver->f_FM_MAC_GetMaxFrameLength = TgecGetMaxFrameLength;

    p_FmMacControllerDriver->f_FM_MAC_MII_WritePhyReg = TGEC_MII_WritePhyReg;
    p_FmMacControllerDriver->f_FM_MAC_MII_ReadPhyReg = TGEC_MII_ReadPhyReg;
}
