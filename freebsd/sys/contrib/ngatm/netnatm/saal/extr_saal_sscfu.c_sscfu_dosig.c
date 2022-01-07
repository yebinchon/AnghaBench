
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sscfu {size_t state; int aarg; } ;
struct SSCFU_MBUF_T {int dummy; } ;
typedef enum saal_sig { ____Placeholder_saal_sig } saal_sig ;


 int AA_SIG (struct sscfu*,int,int *) ;
 int ASSERT (int ) ;
 int MBUF_FREE (struct SSCFU_MBUF_T*) ;
 int SSCFU_DBG_ERR ;
 int SSCFU_DBG_EXEC ;



 int SSCOP_AASIG (struct sscfu*,int ,struct SSCFU_MBUF_T*,int) ;
 int SSCOP_DATA_request ;
 int SSCOP_ESTABLISH_request ;
 int SSCOP_RELEASE_request ;
 int SSCOP_RESYNC_request ;
 int SSCOP_UDATA_request ;
 int VERBOSE (struct sscfu*,int ,struct sscfu*) ;
 int set_state (struct sscfu*,int const) ;
 int * sscf_sigs ;
 int * sscf_states ;

__attribute__((used)) static void
sscfu_dosig(struct sscfu *sscf, enum saal_sig sig, struct SSCFU_MBUF_T *m)
{
 VERBOSE(sscf, SSCFU_DBG_EXEC, (sscf, sscf->aarg,
     "executing signal %s(%s)",
     sscf_sigs[sig], sscf_states[sscf->state]));

 switch (sig) {

   case 138:

  switch (sscf->state) {

    case 129:
   set_state(sscf, 132);
   SSCOP_AASIG(sscf, SSCOP_ESTABLISH_request, m, 1);
   break;

    case 132:
   if (m)
    MBUF_FREE(m);
   goto badsig;

    case 131:
   set_state(sscf, 132);
   SSCOP_AASIG(sscf, SSCOP_ESTABLISH_request, m, 1);
   break;

    case 130:
   set_state(sscf, 128);
   SSCOP_AASIG(sscf, SSCOP_RESYNC_request, m, 0);
   break;

    case 128:
   if (m)
    MBUF_FREE(m);
   goto badsig;
  }
  break;

   case 135:

  switch(sscf->state) {

    case 129:
   if (m)
    MBUF_FREE(m);
   AA_SIG(sscf, 137, ((void*)0));
   break;

    case 132:
   set_state(sscf, 131);
   SSCOP_AASIG(sscf, SSCOP_RELEASE_request, m, 0);
   break;

    case 131:
   if (m)
    MBUF_FREE(m);
   goto badsig;

    case 130:
   set_state(sscf, 131);
   SSCOP_AASIG(sscf, SSCOP_RELEASE_request, m, 0);
   break;

    case 128:
   set_state(sscf, 131);
   SSCOP_AASIG(sscf, SSCOP_RELEASE_request, m, 0);
   break;
  }
  break;

   case 141:

  switch (sscf->state) {

    case 129:
    case 132:
    case 131:
   MBUF_FREE(m);
   goto badsig;

    case 130:
   SSCOP_AASIG(sscf, SSCOP_DATA_request, m, 0);
   break;

    case 128:
   MBUF_FREE(m);
   goto badsig;
  }
  break;

   case 133:

  SSCOP_AASIG(sscf, SSCOP_UDATA_request, m, 0);
  break;

   case 139:
   case 140:
   case 137:
   case 136:
   case 142:
   case 134:
  ASSERT(0);
  break;
 }
 return;

  badsig:
 VERBOSE(sscf, SSCFU_DBG_ERR, (sscf, sscf->aarg,
     "bad signal %s in state %s", sscf_sigs[sig],
     sscf_states[sscf->state]));
}
