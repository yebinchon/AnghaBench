
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f_FM_MACSEC_SetException; int f_FM_MACSEC_Disable; int f_FM_MACSEC_Enable; int f_FM_MACSEC_GetRevision; int f_FM_MACSEC_ConfigException; int f_FM_MACSEC_ConfigSectagWithoutSCI; int f_FM_MACSEC_ConfigKeysUnreadable; int f_FM_MACSEC_ConfigPnExhaustionThreshold; int f_FM_MACSEC_ConfigOnlyScbIsSetFrameTreatment; int f_FM_MACSEC_ConfigChangedTextWithNoEncryptFrameTreatment; int f_FM_MACSEC_ConfigUntagFrameTreatment; int f_FM_MACSEC_ConfigEncryptWithNoChangedTextFrameTreatment; int f_FM_MACSEC_ConfigInvalidTagsFrameTreatment; int f_FM_MACSEC_ConfigUnknownSciFrameTreatment; int f_FM_MACSEC_Free; int f_FM_MACSEC_Init; } ;
typedef TYPE_1__ t_FmMacsecControllerDriver ;


 int MacsecConfigChangedTextWithNoEncryptFrameTreatment ;
 int MacsecConfigEncryptWithNoChangedTextFrameTreatment ;
 int MacsecConfigException ;
 int MacsecConfigInvalidTagsFrameTreatment ;
 int MacsecConfigKeysUnreadable ;
 int MacsecConfigOnlyScbIsSetFrameTreatment ;
 int MacsecConfigPnExhaustionThreshold ;
 int MacsecConfigSectagWithoutSCI ;
 int MacsecConfigUnknownSciFrameTreatment ;
 int MacsecConfigUntagFrameTreatment ;
 int MacsecDisable ;
 int MacsecEnable ;
 int MacsecFree ;
 int MacsecGetRevision ;
 int MacsecInit ;
 int MacsecSetException ;

__attribute__((used)) static void InitFmMacsecControllerDriver(t_FmMacsecControllerDriver *p_FmMacsecControllerDriver)
{
    p_FmMacsecControllerDriver->f_FM_MACSEC_Init = MacsecInit;
    p_FmMacsecControllerDriver->f_FM_MACSEC_Free = MacsecFree;
    p_FmMacsecControllerDriver->f_FM_MACSEC_ConfigUnknownSciFrameTreatment = MacsecConfigUnknownSciFrameTreatment;
    p_FmMacsecControllerDriver->f_FM_MACSEC_ConfigInvalidTagsFrameTreatment = MacsecConfigInvalidTagsFrameTreatment;
    p_FmMacsecControllerDriver->f_FM_MACSEC_ConfigEncryptWithNoChangedTextFrameTreatment = MacsecConfigEncryptWithNoChangedTextFrameTreatment;
    p_FmMacsecControllerDriver->f_FM_MACSEC_ConfigUntagFrameTreatment = MacsecConfigUntagFrameTreatment;
    p_FmMacsecControllerDriver->f_FM_MACSEC_ConfigChangedTextWithNoEncryptFrameTreatment = MacsecConfigChangedTextWithNoEncryptFrameTreatment;
    p_FmMacsecControllerDriver->f_FM_MACSEC_ConfigOnlyScbIsSetFrameTreatment = MacsecConfigOnlyScbIsSetFrameTreatment;
    p_FmMacsecControllerDriver->f_FM_MACSEC_ConfigPnExhaustionThreshold = MacsecConfigPnExhaustionThreshold;
    p_FmMacsecControllerDriver->f_FM_MACSEC_ConfigKeysUnreadable = MacsecConfigKeysUnreadable;
    p_FmMacsecControllerDriver->f_FM_MACSEC_ConfigSectagWithoutSCI = MacsecConfigSectagWithoutSCI;
    p_FmMacsecControllerDriver->f_FM_MACSEC_ConfigException = MacsecConfigException;
    p_FmMacsecControllerDriver->f_FM_MACSEC_GetRevision = MacsecGetRevision;
    p_FmMacsecControllerDriver->f_FM_MACSEC_Enable = MacsecEnable;
    p_FmMacsecControllerDriver->f_FM_MACSEC_Disable = MacsecDisable;
    p_FmMacsecControllerDriver->f_FM_MACSEC_SetException = MacsecSetException;
}
