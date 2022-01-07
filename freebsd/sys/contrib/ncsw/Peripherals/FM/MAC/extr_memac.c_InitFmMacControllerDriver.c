
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f_FM_MAC_MII_ReadPhyReg; int f_FM_MAC_MII_WritePhyReg; int f_FM_MAC_GetMaxFrameLength; int * f_FM_MAC_GetVersion; int f_FM_MAC_GetId; int f_FM_MAC_RemovelExactMatchMacAddr; int f_FM_MAC_AddExactMatchMacAddr; int f_FM_MAC_RemoveHashMacAddr; int f_FM_MAC_AddHashMacAddr; int f_FM_MAC_ModifyMacAddr; int f_FM_MAC_GetStatistics; int f_FM_MAC_ResetCounters; int f_FM_MAC_SetWakeOnLan; int f_FM_MAC_SetRxIgnorePauseFrames; int f_FM_MAC_SetTxPauseFrames; int f_FM_MAC_SetTxAutoPauseFrames; int f_FM_MAC_Resume; int f_FM_MAC_Disable; int f_FM_MAC_Enable; int * f_FM_MAC_RestartAutoneg; int f_FM_MAC_AdjustLink; int f_FM_MAC_SetPromiscuous; int * f_FM_MAC_Disable1588TimeStamp; int f_FM_MAC_Enable1588TimeStamp; int f_FM_MAC_SetException; int f_FM_MAC_ConfigResetOnInit; int f_FM_MAC_ConfigException; int f_FM_MAC_ConfigLengthCheck; int * f_FM_MAC_ConfigHalfDuplex; int f_FM_MAC_ConfigPadAndCrc; int f_FM_MAC_ConfigWan; int f_FM_MAC_ConfigMaxFrameLength; int f_FM_MAC_ConfigLoopback; int * f_FM_MAC_SetStatistics; int f_FM_MAC_Free; int f_FM_MAC_Init; } ;
typedef TYPE_1__ t_FmMacControllerDriver ;


 int MEMAC_MII_ReadPhyReg ;
 int MEMAC_MII_WritePhyReg ;
 int MemacAddExactMatchMacAddress ;
 int MemacAddHashMacAddress ;
 int MemacAdjustLink ;
 int MemacConfigException ;
 int MemacConfigLengthCheck ;
 int MemacConfigLoopback ;
 int MemacConfigMaxFrameLength ;
 int MemacConfigPad ;
 int MemacConfigResetOnInit ;
 int MemacConfigWan ;
 int MemacDelExactMatchMacAddress ;
 int MemacDelHashMacAddress ;
 int MemacDisable ;
 int MemacEnable ;
 int MemacEnable1588TimeStamp ;
 int MemacFree ;
 int MemacGetId ;
 int MemacGetMaxFrameLength ;
 int MemacGetStatistics ;
 int MemacInit ;
 int MemacInitInternalPhy ;
 int MemacModifyMacAddress ;
 int MemacResetCounters ;
 int MemacSetException ;
 int MemacSetPromiscuous ;
 int MemacSetRxIgnorePauseFrames ;
 int MemacSetTxAutoPauseFrames ;
 int MemacSetTxPauseFrames ;
 int MemacSetWakeOnLan ;

__attribute__((used)) static void InitFmMacControllerDriver(t_FmMacControllerDriver *p_FmMacControllerDriver)
{
    p_FmMacControllerDriver->f_FM_MAC_Init = MemacInit;
    p_FmMacControllerDriver->f_FM_MAC_Free = MemacFree;

    p_FmMacControllerDriver->f_FM_MAC_SetStatistics = ((void*)0);
    p_FmMacControllerDriver->f_FM_MAC_ConfigLoopback = MemacConfigLoopback;
    p_FmMacControllerDriver->f_FM_MAC_ConfigMaxFrameLength = MemacConfigMaxFrameLength;

    p_FmMacControllerDriver->f_FM_MAC_ConfigWan = MemacConfigWan;

    p_FmMacControllerDriver->f_FM_MAC_ConfigPadAndCrc = MemacConfigPad;
    p_FmMacControllerDriver->f_FM_MAC_ConfigHalfDuplex = ((void*)0);
    p_FmMacControllerDriver->f_FM_MAC_ConfigLengthCheck = MemacConfigLengthCheck;

    p_FmMacControllerDriver->f_FM_MAC_ConfigException = MemacConfigException;
    p_FmMacControllerDriver->f_FM_MAC_ConfigResetOnInit = MemacConfigResetOnInit;

    p_FmMacControllerDriver->f_FM_MAC_SetException = MemacSetException;

    p_FmMacControllerDriver->f_FM_MAC_Enable1588TimeStamp = MemacEnable1588TimeStamp;
    p_FmMacControllerDriver->f_FM_MAC_Disable1588TimeStamp = ((void*)0);

    p_FmMacControllerDriver->f_FM_MAC_SetPromiscuous = MemacSetPromiscuous;
    p_FmMacControllerDriver->f_FM_MAC_AdjustLink = MemacAdjustLink;
    p_FmMacControllerDriver->f_FM_MAC_RestartAutoneg = ((void*)0);

    p_FmMacControllerDriver->f_FM_MAC_Enable = MemacEnable;
    p_FmMacControllerDriver->f_FM_MAC_Disable = MemacDisable;
    p_FmMacControllerDriver->f_FM_MAC_Resume = MemacInitInternalPhy;

    p_FmMacControllerDriver->f_FM_MAC_SetTxAutoPauseFrames = MemacSetTxAutoPauseFrames;
    p_FmMacControllerDriver->f_FM_MAC_SetTxPauseFrames = MemacSetTxPauseFrames;
    p_FmMacControllerDriver->f_FM_MAC_SetRxIgnorePauseFrames = MemacSetRxIgnorePauseFrames;

    p_FmMacControllerDriver->f_FM_MAC_SetWakeOnLan = MemacSetWakeOnLan;

    p_FmMacControllerDriver->f_FM_MAC_ResetCounters = MemacResetCounters;
    p_FmMacControllerDriver->f_FM_MAC_GetStatistics = MemacGetStatistics;

    p_FmMacControllerDriver->f_FM_MAC_ModifyMacAddr = MemacModifyMacAddress;
    p_FmMacControllerDriver->f_FM_MAC_AddHashMacAddr = MemacAddHashMacAddress;
    p_FmMacControllerDriver->f_FM_MAC_RemoveHashMacAddr = MemacDelHashMacAddress;
    p_FmMacControllerDriver->f_FM_MAC_AddExactMatchMacAddr = MemacAddExactMatchMacAddress;
    p_FmMacControllerDriver->f_FM_MAC_RemovelExactMatchMacAddr = MemacDelExactMatchMacAddress;
    p_FmMacControllerDriver->f_FM_MAC_GetId = MemacGetId;
    p_FmMacControllerDriver->f_FM_MAC_GetVersion = ((void*)0);
    p_FmMacControllerDriver->f_FM_MAC_GetMaxFrameLength = MemacGetMaxFrameLength;

    p_FmMacControllerDriver->f_FM_MAC_MII_WritePhyReg = MEMAC_MII_WritePhyReg;
    p_FmMacControllerDriver->f_FM_MAC_MII_ReadPhyReg = MEMAC_MII_ReadPhyReg;
}
