
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int value; int param; } ;
typedef TYPE_3__ param_value_t ;
struct TYPE_9__ {size_t size; TYPE_3__* data; } ;
struct TYPE_11__ {scalar_t__ use_dictionary; TYPE_2__ param_values; } ;
typedef TYPE_4__ config_t ;
struct TYPE_8__ {int size; int data; } ;
struct TYPE_12__ {TYPE_1__ dictionary; } ;
typedef TYPE_5__ buffer_state_t ;
typedef int ZSTD_CCtx ;


 int ZSTD_CCtx_loadDictionary (int *,int ,int ) ;
 int ZSTD_CCtx_reset (int *,int ) ;
 int ZSTD_CCtx_setParameter (int *,int ,int ) ;
 scalar_t__ ZSTD_isError (int ) ;
 int ZSTD_reset_session_and_parameters ;

__attribute__((used)) static int advanced_config(
    ZSTD_CCtx* cctx,
    buffer_state_t* state,
    config_t const* config) {
    ZSTD_CCtx_reset(cctx, ZSTD_reset_session_and_parameters);
    for (size_t p = 0; p < config->param_values.size; ++p) {
        param_value_t const pv = config->param_values.data[p];
        if (ZSTD_isError(ZSTD_CCtx_setParameter(cctx, pv.param, pv.value))) {
            return 1;
        }
    }
    if (config->use_dictionary) {
        if (ZSTD_isError(ZSTD_CCtx_loadDictionary(
                cctx, state->dictionary.data, state->dictionary.size))) {
            return 1;
        }
    }
    return 0;
}
