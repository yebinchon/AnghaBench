
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fOptSet; } ;
typedef TYPE_1__ tOptions ;
typedef int tOptState ;
typedef int proc_state_mask_t ;


 int AGDUPSTR (char*,char const*,char*) ;
 int AGFREE (char*) ;
 int DIRECTION_CALLED ;
 int OPTION_LOAD_COOKED ;
 int OPTPROC_ERRSTOP ;
 int OPTSTATE_INITIALIZER (int ) ;
 int SET ;
 int load_opt_line (TYPE_1__*,int *,char*,int ,int ) ;

void
optionLoadLine(tOptions * opts, char const * line)
{
    tOptState st = OPTSTATE_INITIALIZER(SET);
    char * pz;
    proc_state_mask_t sv_flags = opts->fOptSet;
    opts->fOptSet &= ~OPTPROC_ERRSTOP;
    AGDUPSTR(pz, line, "opt line");
    load_opt_line(opts, &st, pz, DIRECTION_CALLED, OPTION_LOAD_COOKED);
    AGFREE(pz);
    opts->fOptSet = sv_flags;
}
