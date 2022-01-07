
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int ah_setInterrupts; int ah_getInterrupts; int ah_getPendingInterrupts; int ah_isInterruptPending; int ah_getNextTBTT; int ah_resetStationBeaconTimers; int ah_setStationBeaconTimers; int ah_beaconInit; int ah_setBeaconTimers; int ah_getPowerMode; int ah_setPowerMode; int ah_setKeyCacheEntryMac; int ah_setKeyCacheEntry; int ah_isKeyCacheEntryValid; int ah_resetKeyCacheEntry; int ah_getKeyCacheSize; int ah_get11nExtBusy; int ah_isFastClockEnabled; int ah_procRadarEvent; int ah_getDfsThresh; int ah_enableDfs; int ah_getMibCycleCounts; int ah_setQuiet; int ah_setCoverageClass; int ah_setDecompMask; int ah_getCTSTimeout; int ah_setCTSTimeout; int ah_getAckCTSRate; int ah_setAckCTSRate; int ah_getAckTimeout; int ah_setAckTimeout; int ah_getSlotTime; int ah_setSlotTime; int ah_getSifsTime; int ah_setSifsTime; int ah_setAntennaSwitch; int ah_getAntennaSwitch; int ah_setDefAntenna; int ah_getDefAntenna; int ah_getRfGain; int ah_updateMibCounters; int ah_detectCardPresent; int ah_resetTsf; int ah_getTsf64; int ah_getTsf32; int ah_gpioSetIntr; int ah_gpioSet; int ah_gpioGet; int ah_gpioCfgOutput; int ah_gpioCfgInput; int ah_writeAssocid; int ah_setLedState; int ah_setRegulatoryDomain; int ah_setBssIdMask; int ah_getBssIdMask; int ah_setMacAddress; int ah_getMacAddress; int ah_getDiagState; int ah_setCapability; int ah_getCapability; int ah_procMibEvent; int ah_aniPoll; int ah_rxMonitor; int ah_procRxDesc; int ah_setupRxDesc; int ah_setRxFilter; int ah_getRxFilter; int ah_clrMulticastFilterIndex; int ah_setMulticastFilterIndex; int ah_setMulticastFilter; int ah_stopPcuReceive; int ah_startPcuReceive; int ah_stopDmaReceive; int ah_enableReceive; int ah_setRxDP; int ah_getRxDP; int ah_getTxCompletionRates; int ah_reqTxIntrDesc; int ah_getTxIntrQueue; int ah_procTxDesc; int ah_fillTxDesc; int ah_setupXTxDesc; int ah_setupTxDesc; int ah_stopTxDma; int ah_startTxDma; int ah_numTxPending; int ah_setTxDP; int ah_getTxDP; int ah_resetTxQueue; int ah_releaseTxQueue; int ah_getTxQueueProps; int ah_setTxQueueProps; int ah_setupTxQueue; int ah_updateTxTrigLevel; int ah_getChanNoise; int ah_setTxPowerLimit; int ah_resetCalValid; int ah_perCalibrationN; int ah_perCalibration; int ah_setPCUConfig; int ah_disablePCIE; int ah_configPCIE; int ah_disable; int ah_phyDisable; int ah_reset; int ah_getRateTable; } ;
struct TYPE_2__ {int ah_getChipPowerLimits; int ah_eepromWrite; int ah_eepromRead; int ah_getWirelessModes; int ah_getChannelEdges; } ;


 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int ar9300_Stub_AniPoll ;
 int ar9300_Stub_BeaconInit ;
 int ar9300_Stub_ClrMulticastFilterIndex ;
 int ar9300_Stub_ConfigPCIE ;
 int ar9300_Stub_DetectCardPresent ;
 int ar9300_Stub_Disable ;
 int ar9300_Stub_DisablePCIE ;
 int ar9300_Stub_EepromRead ;
 int ar9300_Stub_EepromWrite ;
 int ar9300_Stub_EnableDfs ;
 int ar9300_Stub_EnableReceive ;
 int ar9300_Stub_FillTxDesc ;
 int ar9300_Stub_Get11nExtBusy ;
 int ar9300_Stub_GetAckCTSRate ;
 int ar9300_Stub_GetAckTimeout ;
 int ar9300_Stub_GetAntennaSwitch ;
 int ar9300_Stub_GetBssIdMask ;
 int ar9300_Stub_GetCTSTimeout ;
 int ar9300_Stub_GetCapability ;
 int ar9300_Stub_GetChannelEdges ;
 int ar9300_Stub_GetChipPowerLimits ;
 int ar9300_Stub_GetDefAntenna ;
 int ar9300_Stub_GetDfsThresh ;
 int ar9300_Stub_GetDiagState ;
 int ar9300_Stub_GetInterrupts ;
 int ar9300_Stub_GetKeyCacheSize ;
 int ar9300_Stub_GetMacAddress ;
 int ar9300_Stub_GetMibCycleCounts ;
 int ar9300_Stub_GetNextTBTT ;
 int ar9300_Stub_GetPendingInterrupts ;
 int ar9300_Stub_GetPowerMode ;
 int ar9300_Stub_GetRateTable ;
 int ar9300_Stub_GetRfgain ;
 int ar9300_Stub_GetRxDP ;
 int ar9300_Stub_GetRxFilter ;
 int ar9300_Stub_GetSifsTime ;
 int ar9300_Stub_GetSlotTime ;
 int ar9300_Stub_GetTsf32 ;
 int ar9300_Stub_GetTsf64 ;
 int ar9300_Stub_GetTxCompletionRates ;
 int ar9300_Stub_GetTxDP ;
 int ar9300_Stub_GetTxIntrQueue ;
 int ar9300_Stub_GetTxQueueProps ;
 int ar9300_Stub_GetWirelessModes ;
 int ar9300_Stub_GpioCfgInput ;
 int ar9300_Stub_GpioCfgOutput ;
 int ar9300_Stub_GpioGet ;
 int ar9300_Stub_GpioSet ;
 int ar9300_Stub_GpioSetIntr ;
 int ar9300_Stub_IntrReqTxDesc ;
 int ar9300_Stub_IsFastClockEnabled ;
 int ar9300_Stub_IsInterruptPending ;
 int ar9300_Stub_IsKeyCacheEntryValid ;
 int ar9300_Stub_NumTxPending ;
 int ar9300_Stub_PerCalibration ;
 int ar9300_Stub_PerCalibrationN ;
 int ar9300_Stub_PhyDisable ;
 int ar9300_Stub_ProcRxDesc ;
 int ar9300_Stub_ProcTxDesc ;
 int ar9300_Stub_ProcessMibIntr ;
 int ar9300_Stub_ProcessRadarEvent ;
 int ar9300_Stub_ReleaseTxQueue ;
 int ar9300_Stub_Reset ;
 int ar9300_Stub_ResetCalValid ;
 int ar9300_Stub_ResetKeyCacheEntry ;
 int ar9300_Stub_ResetStaBeaconTimers ;
 int ar9300_Stub_ResetTsf ;
 int ar9300_Stub_ResetTxQueue ;
 int ar9300_Stub_RxMonitor ;
 int ar9300_Stub_SetAckCTSRate ;
 int ar9300_Stub_SetAckTimeout ;
 int ar9300_Stub_SetAntennaSwitch ;
 int ar9300_Stub_SetBeaconTimers ;
 int ar9300_Stub_SetBssIdMask ;
 int ar9300_Stub_SetCTSTimeout ;
 int ar9300_Stub_SetCapability ;
 int ar9300_Stub_SetCoverageClass ;
 int ar9300_Stub_SetDecompMask ;
 int ar9300_Stub_SetDefAntenna ;
 int ar9300_Stub_SetInterrupts ;
 int ar9300_Stub_SetKeyCacheEntry ;
 int ar9300_Stub_SetKeyCacheEntryMac ;
 int ar9300_Stub_SetLedState ;
 int ar9300_Stub_SetMacAddress ;
 int ar9300_Stub_SetMulticastFilter ;
 int ar9300_Stub_SetMulticastFilterIndex ;
 int ar9300_Stub_SetPCUConfig ;
 int ar9300_Stub_SetPowerMode ;
 int ar9300_Stub_SetQuiet ;
 int ar9300_Stub_SetRegulatoryDomain ;
 int ar9300_Stub_SetRxDP ;
 int ar9300_Stub_SetRxFilter ;
 int ar9300_Stub_SetSifsTime ;
 int ar9300_Stub_SetSlotTime ;
 int ar9300_Stub_SetStaBeaconTimers ;
 int ar9300_Stub_SetTxDP ;
 int ar9300_Stub_SetTxPowerLimit ;
 int ar9300_Stub_SetTxQueueProps ;
 int ar9300_Stub_SetupRxDesc ;
 int ar9300_Stub_SetupTxDesc ;
 int ar9300_Stub_SetupTxQueue ;
 int ar9300_Stub_SetupXTxDesc ;
 int ar9300_Stub_StartPcuReceive ;
 int ar9300_Stub_StartTxDma ;
 int ar9300_Stub_StopDmaReceive ;
 int ar9300_Stub_StopPcuReceive ;
 int ar9300_Stub_StopTxDma ;
 int ar9300_Stub_UpdateMibCounters ;
 int ar9300_Stub_UpdateTxTrigLevel ;
 int ar9300_Stub_WriteAssocid ;
 int ath_hal_getChanNoise ;

void
ar9300_set_stub_functions(struct ath_hal *ah)
{



 ah->ah_getRateTable = ar9300_Stub_GetRateTable;



 ah->ah_reset = ar9300_Stub_Reset;
 ah->ah_phyDisable = ar9300_Stub_PhyDisable;
 ah->ah_disable = ar9300_Stub_Disable;
 ah->ah_configPCIE = ar9300_Stub_ConfigPCIE;
 ah->ah_disablePCIE = ar9300_Stub_DisablePCIE;
 ah->ah_setPCUConfig = ar9300_Stub_SetPCUConfig;
 ah->ah_perCalibration = ar9300_Stub_PerCalibration;
 ah->ah_perCalibrationN = ar9300_Stub_PerCalibrationN;
 ah->ah_resetCalValid = ar9300_Stub_ResetCalValid;
 ah->ah_setTxPowerLimit = ar9300_Stub_SetTxPowerLimit;
 ah->ah_getChanNoise = ath_hal_getChanNoise;


 ah->ah_updateTxTrigLevel = ar9300_Stub_UpdateTxTrigLevel;
 ah->ah_setupTxQueue = ar9300_Stub_SetupTxQueue;
 ah->ah_setTxQueueProps = ar9300_Stub_SetTxQueueProps;
 ah->ah_getTxQueueProps = ar9300_Stub_GetTxQueueProps;
 ah->ah_releaseTxQueue = ar9300_Stub_ReleaseTxQueue;
 ah->ah_resetTxQueue = ar9300_Stub_ResetTxQueue;
 ah->ah_getTxDP = ar9300_Stub_GetTxDP;
 ah->ah_setTxDP = ar9300_Stub_SetTxDP;
 ah->ah_numTxPending = ar9300_Stub_NumTxPending;
 ah->ah_startTxDma = ar9300_Stub_StartTxDma;
 ah->ah_stopTxDma = ar9300_Stub_StopTxDma;
 ah->ah_setupTxDesc = ar9300_Stub_SetupTxDesc;
 ah->ah_setupXTxDesc = ar9300_Stub_SetupXTxDesc;
 ah->ah_fillTxDesc = ar9300_Stub_FillTxDesc;
 ah->ah_procTxDesc = ar9300_Stub_ProcTxDesc;
 ah->ah_getTxIntrQueue = ar9300_Stub_GetTxIntrQueue;
 ah->ah_reqTxIntrDesc = ar9300_Stub_IntrReqTxDesc;
 ah->ah_getTxCompletionRates = ar9300_Stub_GetTxCompletionRates;


 ah->ah_getRxDP = ar9300_Stub_GetRxDP;
 ah->ah_setRxDP = ar9300_Stub_SetRxDP;
 ah->ah_enableReceive = ar9300_Stub_EnableReceive;
 ah->ah_stopDmaReceive = ar9300_Stub_StopDmaReceive;
 ah->ah_startPcuReceive = ar9300_Stub_StartPcuReceive;
 ah->ah_stopPcuReceive = ar9300_Stub_StopPcuReceive;
 ah->ah_setMulticastFilter = ar9300_Stub_SetMulticastFilter;
 ah->ah_setMulticastFilterIndex = ar9300_Stub_SetMulticastFilterIndex;
 ah->ah_clrMulticastFilterIndex = ar9300_Stub_ClrMulticastFilterIndex;
 ah->ah_getRxFilter = ar9300_Stub_GetRxFilter;
 ah->ah_setRxFilter = ar9300_Stub_SetRxFilter;
 ah->ah_setupRxDesc = ar9300_Stub_SetupRxDesc;
 ah->ah_procRxDesc = ar9300_Stub_ProcRxDesc;
 ah->ah_rxMonitor = ar9300_Stub_RxMonitor;
 ah->ah_aniPoll = ar9300_Stub_AniPoll;
 ah->ah_procMibEvent = ar9300_Stub_ProcessMibIntr;


 ah->ah_getCapability = ar9300_Stub_GetCapability;
 ah->ah_setCapability = ar9300_Stub_SetCapability;
 ah->ah_getDiagState = ar9300_Stub_GetDiagState;
 ah->ah_getMacAddress = ar9300_Stub_GetMacAddress;
 ah->ah_setMacAddress = ar9300_Stub_SetMacAddress;
 ah->ah_getBssIdMask = ar9300_Stub_GetBssIdMask;
 ah->ah_setBssIdMask = ar9300_Stub_SetBssIdMask;
 ah->ah_setRegulatoryDomain = ar9300_Stub_SetRegulatoryDomain;
 ah->ah_setLedState = ar9300_Stub_SetLedState;
 ah->ah_writeAssocid = ar9300_Stub_WriteAssocid;
 ah->ah_gpioCfgInput = ar9300_Stub_GpioCfgInput;
 ah->ah_gpioCfgOutput = ar9300_Stub_GpioCfgOutput;
 ah->ah_gpioGet = ar9300_Stub_GpioGet;
 ah->ah_gpioSet = ar9300_Stub_GpioSet;
 ah->ah_gpioSetIntr = ar9300_Stub_GpioSetIntr;
 ah->ah_getTsf32 = ar9300_Stub_GetTsf32;
 ah->ah_getTsf64 = ar9300_Stub_GetTsf64;
 ah->ah_resetTsf = ar9300_Stub_ResetTsf;
 ah->ah_detectCardPresent = ar9300_Stub_DetectCardPresent;
 ah->ah_updateMibCounters = ar9300_Stub_UpdateMibCounters;
 ah->ah_getRfGain = ar9300_Stub_GetRfgain;
 ah->ah_getDefAntenna = ar9300_Stub_GetDefAntenna;
 ah->ah_setDefAntenna = ar9300_Stub_SetDefAntenna;
 ah->ah_getAntennaSwitch = ar9300_Stub_GetAntennaSwitch;
 ah->ah_setAntennaSwitch = ar9300_Stub_SetAntennaSwitch;
 ah->ah_setSifsTime = ar9300_Stub_SetSifsTime;
 ah->ah_getSifsTime = ar9300_Stub_GetSifsTime;
 ah->ah_setSlotTime = ar9300_Stub_SetSlotTime;
 ah->ah_getSlotTime = ar9300_Stub_GetSlotTime;
 ah->ah_setAckTimeout = ar9300_Stub_SetAckTimeout;
 ah->ah_getAckTimeout = ar9300_Stub_GetAckTimeout;
 ah->ah_setAckCTSRate = ar9300_Stub_SetAckCTSRate;
 ah->ah_getAckCTSRate = ar9300_Stub_GetAckCTSRate;
 ah->ah_setCTSTimeout = ar9300_Stub_SetCTSTimeout;
 ah->ah_getCTSTimeout = ar9300_Stub_GetCTSTimeout;
 ah->ah_setDecompMask = ar9300_Stub_SetDecompMask;
 ah->ah_setCoverageClass = ar9300_Stub_SetCoverageClass;
 ah->ah_setQuiet = ar9300_Stub_SetQuiet;
 ah->ah_getMibCycleCounts = ar9300_Stub_GetMibCycleCounts;


 ah->ah_enableDfs = ar9300_Stub_EnableDfs;
 ah->ah_getDfsThresh = ar9300_Stub_GetDfsThresh;
 ah->ah_procRadarEvent = ar9300_Stub_ProcessRadarEvent;
 ah->ah_isFastClockEnabled = ar9300_Stub_IsFastClockEnabled;
 ah->ah_get11nExtBusy = ar9300_Stub_Get11nExtBusy;


 ah->ah_getKeyCacheSize = ar9300_Stub_GetKeyCacheSize;
 ah->ah_resetKeyCacheEntry = ar9300_Stub_ResetKeyCacheEntry;
 ah->ah_isKeyCacheEntryValid = ar9300_Stub_IsKeyCacheEntryValid;
 ah->ah_setKeyCacheEntry = ar9300_Stub_SetKeyCacheEntry;
 ah->ah_setKeyCacheEntryMac = ar9300_Stub_SetKeyCacheEntryMac;


 ah->ah_setPowerMode = ar9300_Stub_SetPowerMode;
 ah->ah_getPowerMode = ar9300_Stub_GetPowerMode;


 ah->ah_setBeaconTimers = ar9300_Stub_SetBeaconTimers;
 ah->ah_beaconInit = ar9300_Stub_BeaconInit;
 ah->ah_setStationBeaconTimers = ar9300_Stub_SetStaBeaconTimers;
 ah->ah_resetStationBeaconTimers = ar9300_Stub_ResetStaBeaconTimers;
 ah->ah_getNextTBTT = ar9300_Stub_GetNextTBTT;


 ah->ah_isInterruptPending = ar9300_Stub_IsInterruptPending;
 ah->ah_getPendingInterrupts = ar9300_Stub_GetPendingInterrupts;
 ah->ah_getInterrupts = ar9300_Stub_GetInterrupts;
 ah->ah_setInterrupts = ar9300_Stub_SetInterrupts;

 AH_PRIVATE(ah)->ah_getChannelEdges = ar9300_Stub_GetChannelEdges;
 AH_PRIVATE(ah)->ah_getWirelessModes = ar9300_Stub_GetWirelessModes;
 AH_PRIVATE(ah)->ah_eepromRead = ar9300_Stub_EepromRead;



 AH_PRIVATE(ah)->ah_getChipPowerLimits = ar9300_Stub_GetChipPowerLimits;
}
