
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_3__ {int pe_maxlen; int pe_relstep; int pe_relpwr; int pe_inband; int pe_prssi; int pe_height; int pe_rrssi; int pe_firpwr; } ;
typedef TYPE_1__ HAL_PHYERR_PARAM ;
typedef int HAL_BOOL ;


 int AH_TRUE ;
 int AR9300_DFS_FIRPWR ;
 int AR9300_DFS_HEIGHT ;
 int AR9300_DFS_INBAND ;
 int AR9300_DFS_MAXLEN ;
 int AR9300_DFS_PRSSI ;
 int AR9300_DFS_RELPWR ;
 int AR9300_DFS_RELSTEP ;
 int AR9300_DFS_RRSSI ;

HAL_BOOL
ar9300_get_default_dfs_thresh(struct ath_hal *ah, HAL_PHYERR_PARAM *pe)
{

    pe->pe_firpwr = AR9300_DFS_FIRPWR;
    pe->pe_rrssi = AR9300_DFS_RRSSI;
    pe->pe_height = AR9300_DFS_HEIGHT;
    pe->pe_prssi = AR9300_DFS_PRSSI;


    pe->pe_inband = AR9300_DFS_INBAND;
    pe->pe_relpwr = AR9300_DFS_RELPWR;
    pe->pe_relstep = AR9300_DFS_RELSTEP;
    pe->pe_maxlen = AR9300_DFS_MAXLEN;
    return (AH_TRUE);
}
