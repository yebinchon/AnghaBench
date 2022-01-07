
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sscfu {size_t state; int aarg; } ;
typedef enum sscfu_state { ____Placeholder_sscfu_state } sscfu_state ;


 int SSCFU_DBG_STATE ;
 int VERBOSE (struct sscfu*,int ,struct sscfu*) ;
 int * sscf_states ;

__attribute__((used)) static __inline void
set_state(struct sscfu *sscf, enum sscfu_state state)
{
 VERBOSE(sscf, SSCFU_DBG_STATE, (sscf, sscf->aarg,
     "change state from %s to %s",
     sscf_states[sscf->state], sscf_states[state]));
 sscf->state = state;
}
