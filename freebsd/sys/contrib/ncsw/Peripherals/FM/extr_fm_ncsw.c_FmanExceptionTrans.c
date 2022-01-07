
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fman_exceptions { ____Placeholder_fman_exceptions } fman_exceptions ;
typedef int e_FmExceptions ;


 int E_FMAN_EX_BMI_DISPATCH_RAM_ECC ;
 int E_FMAN_EX_BMI_LIST_RAM_ECC ;
 int E_FMAN_EX_BMI_STATISTICS_RAM_ECC ;
 int E_FMAN_EX_BMI_STORAGE_PROFILE_ECC ;
 int E_FMAN_EX_DMA_BUS_ERROR ;
 int E_FMAN_EX_DMA_FM_WRITE_ECC ;
 int E_FMAN_EX_DMA_READ_ECC ;
 int E_FMAN_EX_DMA_SYSTEM_WRITE_ECC ;
 int E_FMAN_EX_FPM_DOUBLE_ECC ;
 int E_FMAN_EX_FPM_SINGLE_ECC ;
 int E_FMAN_EX_FPM_STALL_ON_TASKS ;
 int E_FMAN_EX_IRAM_ECC ;
 int E_FMAN_EX_MURAM_ECC ;
 int E_FMAN_EX_QMI_DEQ_FROM_UNKNOWN_PORTID ;
 int E_FMAN_EX_QMI_DOUBLE_ECC ;
 int E_FMAN_EX_QMI_SINGLE_ECC ;
__attribute__((used)) static __inline__ enum fman_exceptions FmanExceptionTrans(e_FmExceptions exception)
{
    switch (exception) {
            case 139:
                return E_FMAN_EX_DMA_BUS_ERROR;
            case 137:
                return E_FMAN_EX_DMA_READ_ECC;
            case 136:
                return E_FMAN_EX_DMA_SYSTEM_WRITE_ECC;
            case 138:
                return E_FMAN_EX_DMA_FM_WRITE_ECC;
            case 133:
                return E_FMAN_EX_FPM_STALL_ON_TASKS;
            case 134:
                return E_FMAN_EX_FPM_SINGLE_ECC;
            case 135:
                return E_FMAN_EX_FPM_DOUBLE_ECC;
            case 128:
                return E_FMAN_EX_QMI_SINGLE_ECC;
            case 129:
                return E_FMAN_EX_QMI_DOUBLE_ECC;
            case 130:
                return E_FMAN_EX_QMI_DEQ_FROM_UNKNOWN_PORTID;
            case 142:
                return E_FMAN_EX_BMI_LIST_RAM_ECC;
            case 140:
                return E_FMAN_EX_BMI_STORAGE_PROFILE_ECC;
            case 141:
                return E_FMAN_EX_BMI_STATISTICS_RAM_ECC;
            case 143:
                return E_FMAN_EX_BMI_DISPATCH_RAM_ECC;
            case 132:
                return E_FMAN_EX_IRAM_ECC;
            case 131:
                return E_FMAN_EX_MURAM_ECC;
            default:
                return E_FMAN_EX_DMA_BUS_ERROR;
        }
}
