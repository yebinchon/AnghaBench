
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sscfu_sig {int sig; struct SSCFU_MBUF_T* m; } ;
struct sscfu {int inhand; size_t state; int sigs; int aarg; } ;
struct SSCFU_MBUF_T {int dummy; } ;
typedef enum saal_sig { ____Placeholder_saal_sig } saal_sig ;


 int ENOMEM ;
 int SIGQ_APPEND (int *,struct sscfu_sig*) ;
 int SIG_ALLOC (struct sscfu_sig*) ;
 int SSCFU_DBG_EXEC ;
 int VERBOSE (struct sscfu*,int ,struct sscfu*) ;
 int * sscf_sigs ;
 int * sscf_states ;
 int sscfu_dosig (struct sscfu*,int,struct SSCFU_MBUF_T*) ;
 int sscfu_unqueue (struct sscfu*) ;

int
sscfu_saalsig(struct sscfu *sscf, enum saal_sig sig, struct SSCFU_MBUF_T *m)
{
 struct sscfu_sig *s;

 if (sscf->inhand) {
  VERBOSE(sscf, SSCFU_DBG_EXEC, (sscf, sscf->aarg,
      "queuing user signal %s(%s)",
      sscf_sigs[sig], sscf_states[sscf->state]));
  SIG_ALLOC(s);
  if (s == ((void*)0))
   return (ENOMEM);
  s->sig = sig;
  s->m = m;
  SIGQ_APPEND(&sscf->sigs, s);
  return (0);
 }

 sscf->inhand = 1;
 sscfu_dosig(sscf, sig, m);
 sscfu_unqueue(sscf);
 return (0);
}
