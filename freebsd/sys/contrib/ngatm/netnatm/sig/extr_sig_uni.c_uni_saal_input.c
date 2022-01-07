
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_msg {int dummy; } ;
struct uni {int dummy; } ;
typedef enum saal_sig { ____Placeholder_saal_sig } saal_sig ;
 int SIGO_SAAL_DATA_indication ;
 int SIGO_SAAL_ESTABLISH_confirm ;
 int SIGO_SAAL_ESTABLISH_indication ;
 int SIGO_SAAL_RELEASE_confirm ;
 int SIGO_SAAL_RELEASE_indication ;
 int SIGO_SAAL_UDATA_indication ;
 int UNI_FAC_ERR ;
 int VERBOSE (struct uni*,int ,int,char*,int) ;
 int uni_enq_coord (struct uni*,int ,int ,struct uni_msg*) ;
 int uni_msg_destroy (struct uni_msg*) ;

void
uni_saal_input(struct uni *uni, enum saal_sig sig, struct uni_msg *m)
{
 switch (sig) {

   case 131:
  if (m != ((void*)0))
   uni_msg_destroy(m);
  uni_enq_coord(uni, SIGO_SAAL_ESTABLISH_indication, 0, ((void*)0));
  break;

   case 132:
  if (m != ((void*)0))
   uni_msg_destroy(m);
  uni_enq_coord(uni, SIGO_SAAL_ESTABLISH_confirm, 0, ((void*)0));
  break;

   case 130:
  if (m != ((void*)0))
   uni_msg_destroy(m);
  uni_enq_coord(uni, SIGO_SAAL_RELEASE_confirm, 0, ((void*)0));
  break;

   case 129:
  if (m != ((void*)0))
   uni_msg_destroy(m);
  uni_enq_coord(uni, SIGO_SAAL_RELEASE_indication, 0, ((void*)0));
  break;

   case 133:
  uni_enq_coord(uni, SIGO_SAAL_DATA_indication, 0, m);
  break;

   case 128:
  uni_enq_coord(uni, SIGO_SAAL_UDATA_indication, 0, m);
  break;

   default:
  VERBOSE(uni, UNI_FAC_ERR, 1, "bogus saal signal %u", sig);
  if (m != ((void*)0))
   uni_msg_destroy(m);
  break;
 }
}
