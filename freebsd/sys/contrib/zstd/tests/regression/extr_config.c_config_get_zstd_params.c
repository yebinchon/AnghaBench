
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_14__ {size_t size; TYPE_1__* data; } ;
typedef TYPE_4__ param_values_t ;
struct TYPE_15__ {scalar_t__ no_pledged_src_size; TYPE_4__ param_values; } ;
typedef TYPE_5__ config_t ;
typedef int ZSTD_strategy ;
struct TYPE_13__ {unsigned int windowLog; unsigned int chainLog; unsigned int hashLog; unsigned int searchLog; unsigned int minMatch; unsigned int targetLength; int strategy; } ;
struct TYPE_12__ {unsigned int contentSizeFlag; unsigned int checksumFlag; int noDictIDFlag; } ;
struct TYPE_16__ {TYPE_3__ cParams; TYPE_2__ fParams; } ;
typedef TYPE_6__ ZSTD_parameters ;
struct TYPE_11__ {unsigned int value; int param; } ;


 int CONFIG_NO_LEVEL ;
 int ZSTD_CONTENTSIZE_UNKNOWN ;
 TYPE_6__ ZSTD_getParams (int,int ,size_t) ;
 int config_get_level (TYPE_5__ const*) ;

ZSTD_parameters config_get_zstd_params(
    config_t const* config,
    uint64_t srcSize,
    size_t dictSize)
{
    ZSTD_parameters zparams = {};
    param_values_t const params = config->param_values;
    int level = config_get_level(config);
    if (level == CONFIG_NO_LEVEL)
        level = 3;
    zparams = ZSTD_getParams(
        level,
        config->no_pledged_src_size ? ZSTD_CONTENTSIZE_UNKNOWN : srcSize,
        dictSize);
    for (size_t i = 0; i < params.size; ++i) {
        unsigned const value = params.data[i].value;
        switch (params.data[i].param) {
            case 135:
                zparams.fParams.contentSizeFlag = value;
                break;
            case 136:
                zparams.fParams.checksumFlag = value;
                break;
            case 134:
                zparams.fParams.noDictIDFlag = !value;
                break;
            case 128:
                zparams.cParams.windowLog = value;
                break;
            case 137:
                zparams.cParams.chainLog = value;
                break;
            case 133:
                zparams.cParams.hashLog = value;
                break;
            case 131:
                zparams.cParams.searchLog = value;
                break;
            case 132:
                zparams.cParams.minMatch = value;
                break;
            case 129:
                zparams.cParams.targetLength = value;
                break;
            case 130:
                zparams.cParams.strategy = (ZSTD_strategy)value;
                break;
            default:
                break;
        }
    }
    return zparams;
}
