
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int uint32_t ;
struct uni_msg {int dummy; } ;
struct TYPE_24__ {int cause; int epref; } ;
struct TYPE_23__ {int cause; int epref; } ;
struct TYPE_22__ {int epref; } ;
struct TYPE_21__ {int epref; } ;
struct TYPE_20__ {int epref; } ;
struct TYPE_19__ {int epref; } ;
struct TYPE_18__ {int epref; } ;
struct TYPE_17__ {int epref; } ;
struct TYPE_16__ {int epref; } ;
struct TYPE_13__ {TYPE_9__ drop_party_ack; TYPE_8__ drop_party; TYPE_7__ add_party_rej; TYPE_6__ party_alerting; TYPE_5__ add_party; TYPE_4__ connect; TYPE_3__ alerting; TYPE_2__ call_proc; TYPE_1__ setup; } ;
struct uni_all {TYPE_10__ u; } ;
struct uni {int arg; TYPE_11__* funcs; int cause; int proto; int cx; int sb_tb; } ;
struct call {size_t cstate; struct uni* uni; int type; scalar_t__ mine; int cref; } ;
typedef enum call_sig { ____Placeholder_call_sig } call_sig ;
struct TYPE_15__ {int name; } ;
struct TYPE_14__ {int (* uni_output ) (struct uni*,int ,int ,int ,struct uni_msg*) ;} ;
 int CALL_FREE (struct call*) ;
 int CALL_LEAF ;
 int CALL_ROOT ;
 int UNIAPI_ERROR_BAD_CALLSTATE ;
 int UNIAPI_OK ;
 int UNIAPI_PARTY_DESTROYED ;
 int UNIPROTO_UNI40N ;
 int UNIPROTO_UNI40U ;
 int UNI_CALLSTATE_U0 ;
 int UNI_CAUSE_MSG_INCOMP ;
 int UNI_EPSTATE_NULL ;
 int UNI_FAC_CALL ;
 int UNI_FAC_ERR ;
 int UNI_FREE (struct uni_all*) ;
 int VERBOSE (struct uni*,int ,int,char*,int,...) ;
 int * call_sigs ;
 TYPE_12__* callstates ;
 int clear_callD (struct call*) ;
 int n10_connect_ack (struct call*,struct uni_msg*,struct uni_all*) ;
 int n8_setup_compl_request (struct call*,struct uni_msg*,int ,int) ;
 int nx_add_party_rej_indication (struct call*,struct uni_msg*) ;
 int nx_drop_party_ack_indication (struct call*,struct uni_msg*) ;
 int nx_drop_party_indication (struct call*,struct uni_msg*) ;
 int stub1 (struct uni*,int ,int ,int ,struct uni_msg*) ;
 int u11n12_release (struct call*,struct uni_msg*,struct uni_all*) ;
 int u11n12_t308 (struct call*) ;
 int u1n6_call_proc (struct call*,struct uni_msg*,struct uni_all*,int const) ;
 int u1n6_t303 (struct call*) ;
 int u3n9_t310 (struct call*) ;
 int u4n7_t301 (struct call*) ;
 int u6n1_proceeding_request (struct call*,struct uni_msg*,int ,int const) ;
 int u8_connect_ack (struct call*,struct uni_msg*,struct uni_all*,int) ;
 int u8_t313 (struct call*) ;
 int un0_setup (struct call*,struct uni_msg*,struct uni_all*,int const) ;
 int un0_setup_request (struct call*,struct uni_msg*,int ,int const) ;
 int un10_add_party_ack_request (struct call*,struct uni_msg*,int ) ;
 int un10_link_establish_confirm (struct call*) ;
 int un10_link_establish_error_indication (struct call*) ;
 int un10_link_establish_indication (struct call*) ;
 int un10_link_release_indication (struct call*) ;
 int un10n8_add_party_ack (struct call*,struct uni_msg*,struct uni_all*,int) ;
 int un11un12_status (struct call*,struct uni_msg*,struct uni_all*) ;
 int uni_bad_message (struct call*,struct uni_all*,int ,int *,int) ;
 int uni_decode_body (struct uni_msg*,struct uni_all*,int *) ;
 int uni_destroy_call (struct call*,int ) ;
 int uni_msg_destroy (struct uni_msg*) ;
 int uni_party_act_count (struct call*,int) ;
 int uni_send_output (struct uni_all*,struct uni*) ;
 int uniapi_call_error (struct call*,int ,int ) ;
 int uniapi_uni_error (struct uni*,int ,int ,int ) ;
 int unx_add_party (struct call*,struct uni_msg*,struct uni_all*,int) ;
 int unx_add_party_rej (struct call*,struct uni_msg*,struct uni_all*,int) ;
 int unx_add_party_rej_request (struct call*,struct uni_msg*,int ) ;
 int unx_add_party_request (struct call*,struct uni_msg*,int ) ;
 int unx_alerting (struct call*,struct uni_msg*,struct uni_all*,int const) ;
 int unx_alerting_request (struct call*,struct uni_msg*,int ,int const) ;
 int unx_connect (struct call*,struct uni_msg*,struct uni_all*,int const) ;
 int unx_drop_party (struct call*,struct uni_msg*,struct uni_all*,int) ;
 int unx_drop_party_ack (struct call*,struct uni_msg*,struct uni_all*,int) ;
 int unx_drop_party_ack_request (struct call*,struct uni_msg*,int ) ;
 int unx_drop_party_request (struct call*,struct uni_msg*,int ) ;
 int unx_link_establish_indication (struct call*) ;
 int unx_link_release_indication (struct call*) ;
 int unx_notify (struct call*,struct uni_msg*,struct uni_all*) ;
 int unx_notify_request (struct call*,struct uni_msg*,int ) ;
 int unx_party_alerting (struct call*,struct uni_msg*,struct uni_all*,int) ;
 int unx_party_alerting_request (struct call*,struct uni_msg*,int ) ;
 int unx_release (struct call*,struct uni_msg*,struct uni_all*,int const) ;
 int unx_release_compl (struct call*,struct uni_msg*,struct uni_all*) ;
 int unx_release_request (struct call*,struct uni_msg*,int ,int const) ;
 int unx_release_response (struct call*,struct uni_msg*,int ) ;
 int unx_send_add_party_rej (struct call*,struct uni_all*) ;
 int unx_send_party_status_enq (struct call*,struct uni_all*) ;
 int unx_setup_response (struct call*,struct uni_msg*,int ,int const) ;
 int unx_status (struct call*,struct uni_msg*,struct uni_all*) ;
 int unx_status_enq (struct call*,struct uni_msg*,struct uni_all*) ;
 int unx_status_enquiry_request (struct call*,struct uni_msg*,int ) ;
 int unx_t322 (struct call*) ;
 int unx_unknown (struct call*,struct uni_msg*,struct uni_all*) ;
 int ux_add_party_rej_indication (struct call*,struct uni_msg*) ;
 int ux_drop_party_ack_indication (struct call*,struct uni_msg*) ;
 int ux_drop_party_indication (struct call*,struct uni_msg*) ;

void
uni_sig_call(struct call *c, enum call_sig sig, uint32_t cookie,
    struct uni_msg *msg, struct uni_all *u)
{
 if (sig >= 160) {
  VERBOSE(c->uni, UNI_FAC_ERR, 1,
      "Signal %d outside of range to Call-Control", sig);
  if (msg)
   uni_msg_destroy(msg);
  if (u)
   UNI_FREE(u);
  return;
 }

 VERBOSE(c->uni, UNI_FAC_CALL, 1, "Signal %s in state %s of call %u/%s"
     "; cookie %u", call_sigs[sig], callstates[c->cstate].name, c->cref,
     c->mine ? "mine" : "his", cookie);

 switch (sig) {

   case 156:
  if (c->cstate == 190 || c->cstate == 201)


   un10_link_release_indication(c);
  else


   unx_link_release_indication(c);
  break;

   case 159:
  if (c->cstate != 190 && c->cstate != 201) {
   VERBOSE(c->uni, UNI_FAC_ERR, 1,
       "link-establish-error.indication in cs=%s",
       callstates[c->cstate].name);
   break;
  }


  un10_link_establish_error_indication(c);
  break;

   case 157:
  switch (c->cstate) {

    case 191: case 202:
    case 187: case 198:
    case 186: case 197:
    case 185: case 196:
    case 184: case 195:
    case 183: case 194:
    case 182: case 193:


   unx_link_establish_indication(c);
   break;

    case 190: case 201:


   un10_link_establish_indication(c);
   break;

    case 189: case 200:
    case 188: case 199:


   break;

    default:
   VERBOSE(c->uni, UNI_FAC_ERR, 1,
       "link-establish.indication in cs=%s",
       callstates[c->cstate].name);
  }
  break;

   case 158:
  if (c->cstate != 190 && c->cstate != 201) {
   VERBOSE(c->uni, UNI_FAC_ERR, 1,
       "link-establish.confirm in cs=%s",
       callstates[c->cstate].name);
   break;
  }


  un10_link_establish_confirm(c);
  break;

   case 128:


  unx_unknown(c, msg, u);
  break;

   case 141:
  if (c->cstate != 192) {
   (void)uni_decode_body(msg, u, &c->uni->cx);
   uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP,
       &u->u.setup.epref, -1);
   goto drop;
  }
  if (c->uni->proto == UNIPROTO_UNI40N)

   un0_setup(c, msg, u, 202);
  else

   un0_setup(c, msg, u, 185);
  break;

   case 170:
  if (c->cstate == 191) {

   u1n6_call_proc(c, msg, u, 187);
   break;
  }
  if (c->cstate == 196) {

   u1n6_call_proc(c, msg, u, 193);
   break;
  }
  (void)uni_decode_body(msg, u, &c->uni->cx);
  uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP,
      &u->u.call_proc.epref, -1);
  goto drop;

   case 173:
  if (c->cstate == 191 || c->cstate == 187) {


   unx_alerting(c, msg, u, 186);
   break;
  }
  if (c->cstate == 196) {


   unx_alerting(c, msg, u, 195);
   break;
  }
  (void)uni_decode_body(msg, u, &c->uni->cx);
  uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP,
      &u->u.alerting.epref, -1);
  goto drop;

   case 168:
  if (c->cstate == 191 || c->cstate == 187 ||
      c->cstate == 186) {



   unx_connect(c, msg, u, 190);
   break;
  }
  if (c->cstate == 196 || c->cstate == 195 ||
      c->cstate == 193) {



   unx_connect(c, msg, u, 194);
   break;
  }
  (void)uni_decode_body(msg, u, &c->uni->cx);
  uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP,
      &u->u.connect.epref, -1);
  goto drop;

   case 167:
  if (c->cstate == 183) {

   u8_connect_ack(c, msg, u, 190);
   break;
  }
  if (c->cstate == 201) {

   n10_connect_ack(c, msg, u);
   break;
  }
  uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP, ((void*)0), 0);
  goto drop;

   case 149:
  switch (c->cstate) {

    default:
   uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP, ((void*)0), 0);
   goto drop;

    case 189:
    case 199:


   u11n12_release(c, msg, u);
   break;

    case 191:
    case 187:
    case 186:
    case 185:
    case 184:
    case 183:
    case 182:
    case 190:
    case 188:

   unx_release(c, msg, u, 188);
   break;

    case 202:
    case 198:
    case 197:
    case 196:
    case 195:
    case 194:
    case 193:
    case 201:
    case 200:

   unx_release(c, msg, u, 200);
   break;
  }
  break;

   case 148:


  unx_release_compl(c, msg, u);
  break;

   case 155:


  unx_notify(c, msg, u);
  break;

   case 137:
  if (c->cstate == 189 || c->cstate == 188 ||
      c->cstate == 200 || c->cstate == 199) {




   un11un12_status(c, msg, u);
   break;
  }


  unx_status(c, msg, u);
  break;

   case 136:


  unx_status_enq(c, msg, u);
  break;

   case 180:
  (void)uni_decode_body(msg, u, &c->uni->cx);

  if (c->type != CALL_LEAF && c->type != CALL_ROOT) {
   uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP,
       &u->u.add_party.epref, UNI_EPSTATE_NULL);
   goto drop;
  }
  switch (c->cstate) {
    case 184:
    case 183:
    case 190:
    case 197:
    case 201:





   unx_add_party(c, msg, u, 1);
   break;

    default:
   unx_add_party(c, msg, u, 0);
   goto drop;
  }
  break;

   case 153:
  (void)uni_decode_body(msg, u, &c->uni->cx);

  if (c->type != CALL_ROOT) {
   uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP,
       &u->u.party_alerting.epref, -1);
   goto drop;
  }
  switch (c->cstate) {

    default:

   unx_party_alerting(c, msg, u, 0);
   break;

    case 186:
    case 190:





   unx_party_alerting(c, msg, u, 1);
   break;
  }
  break;

   case 179:
  (void)uni_decode_body(msg, u, &c->uni->cx);

  if (c->type != CALL_ROOT) {
   uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP,
       &u->u.add_party_rej.epref, -1);
   goto drop;
  }
  switch (c->cstate) {

    case 190:



   un10n8_add_party_ack(c, msg, u, 1);
   break;

    default:

   un10n8_add_party_ack(c, msg, u, 0);
   break;
  }
  break;

   case 177:
  (void)uni_decode_body(msg, u, &c->uni->cx);

  if (c->type != CALL_ROOT) {
   uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP,
       &u->u.add_party_rej.epref, -1);
   goto drop;
  }
  switch (c->cstate) {

    case 186:
         case 190:
    case 195:
    case 194:
    case 201:





   unx_add_party_rej(c, msg, u, 1);
   break;

    default:

   unx_add_party_rej(c, msg, u, 0);
   break;
  }
  break;

   case 166:
  (void)uni_decode_body(msg, u, &c->uni->cx);

  if (c->type != CALL_ROOT && c->type != CALL_LEAF) {
   uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP,
       &u->u.drop_party.epref, -1);
   goto drop;
  }
  switch (c->cstate) {
    case 189:
    case 188:
    case 200:
    case 199:




   goto drop;

    case 192:
   uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP,
       &u->u.drop_party.epref, UNI_EPSTATE_NULL);
   goto drop;

    case 187:
    case 198:

   unx_drop_party(c, msg, u, 0);
   break;

    case 183:
   if (c->uni->sb_tb) {

    unx_drop_party(c, msg, u, 0);
    break;
   }


    default:




   unx_drop_party(c, msg, u, 1);
   break;
  }
  break;

   case 165:
  (void)uni_decode_body(msg, u, &c->uni->cx);

  if (c->type != CALL_ROOT && c->type != CALL_LEAF) {
   uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP,
       &u->u.drop_party_ack.epref, -1);
   goto drop;
  }
  switch (c->cstate) {

    case 189:
    case 188:




   goto drop;

    case 192:
   uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP,
       &u->u.drop_party.epref, UNI_EPSTATE_NULL);
   goto drop;

    case 186:
    case 197:
    case 184:
    case 195:
    case 183:
    case 194:
    case 190:
    case 201:




   unx_drop_party_ack(c, msg, u, 1);
   break;

    default:

   unx_drop_party_ack(c, msg, u, 0);
   break;
  }
  break;

   case 169:
  unx_unknown(c, msg, u);
  break;




   case 139:
  if (c->cstate == 192) {


   if (c->uni->proto == UNIPROTO_UNI40N)
    un0_setup_request(c, msg, cookie, 196);
   else
    un0_setup_request(c, msg, cookie, 191);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1, "setup.request in cs=%s",
      callstates[c->cstate].name);
  uniapi_call_error(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
  uni_msg_destroy(msg);
  break;

   case 138:
  if (c->cstate == 185 || c->cstate == 182 ||
      c->cstate == 184) {



   unx_setup_response(c, msg, cookie, 183);
   break;
  }
  if (c->cstate == 202 || c->cstate == 198 ||
      c->cstate == 197) {



   unx_setup_response(c, msg, cookie, 201);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1, "setup.response in cs=%s",
      callstates[c->cstate].name);
  uniapi_call_error(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
  uni_msg_destroy(msg);
  break;

   case 140:
  if (c->cstate == 194) {

   n8_setup_compl_request(c, msg, cookie, 201);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1, "setup_compl.request in cs=%s",
      callstates[c->cstate].name);
  uniapi_call_error(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
  uni_msg_destroy(msg);
  break;

   case 150:
  if (c->cstate == 185) {

   u6n1_proceeding_request(c, msg, cookie, 182);
   break;
  }
  if (c->cstate == 202) {

   u6n1_proceeding_request(c, msg, cookie, 198);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1, "proceeding.request in cs=%s",
      callstates[c->cstate].name);
  uniapi_call_error(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
  uni_msg_destroy(msg);
  break;

   case 172:
  if (c->cstate == 185 || c->cstate == 182) {


   unx_alerting_request(c, msg, cookie, 184);
   break;
  }
  if (c->cstate == 202 || c->cstate == 198) {


   unx_alerting_request(c, msg, cookie, 197);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1, "alerting.request in cs=%s",
      callstates[c->cstate].name);
  uniapi_call_error(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
  uni_msg_destroy(msg);
  break;

   case 147:
  switch (c->cstate) {

    case 191:
    case 187:
    case 186:
    case 185:
    case 184:
    case 183:
    case 182:
    case 190:

   unx_release_request(c, msg, cookie, 189);
   break;

    case 202:
    case 198:
    case 197:
    case 196:
    case 195:
    case 194:
    case 193:
    case 201:

   unx_release_request(c, msg, cookie, 199);
   break;

    case 189:
    case 188:
    case 200:
    case 199:
    case 192:
   VERBOSE(c->uni, UNI_FAC_ERR, 1,
       "release.request in cs=%s",
       callstates[c->cstate].name);
   uniapi_call_error(c, UNIAPI_ERROR_BAD_CALLSTATE,
       cookie);
   uni_msg_destroy(msg);
   break;
  }
  break;

   case 146:
  if (c->cstate == 185 || c->cstate == 188 ||
      c->cstate == 202 || c->cstate == 200) {




   unx_release_response(c, msg, cookie);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1, "release.response in cs=%s",
      callstates[c->cstate].name);
  uniapi_call_error(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
  uni_msg_destroy(msg);
  break;

   case 154:


  unx_notify_request(c, msg, cookie);
  break;

   case 135:


  unx_status_enquiry_request(c, msg, cookie);
  break;

   case 174:
  if (c->cstate == 186 || c->cstate == 190 ||
      c->cstate == 195 || c->cstate == 201) {




   unx_add_party_request(c, msg, cookie);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1, "add-party.request in cs=%s",
      callstates[c->cstate].name);
  uniapi_call_error(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
  uni_msg_destroy(msg);
  break;

   case 152:
  if (c->cstate == 184 || c->cstate == 183 ||
      c->cstate == 190 ||
      c->cstate == 197 || c->cstate == 201) {





   unx_party_alerting_request(c, msg, cookie);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1,
      "party-alerting.request in cs=%s",
      callstates[c->cstate].name);
  uniapi_call_error(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
  uni_msg_destroy(msg);
  break;

   case 178:
  if (c->cstate == 190 || c->cstate == 201) {


   un10_add_party_ack_request(c, msg, cookie);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1,
      "add-party-ack.request in cs=%s",
      callstates[c->cstate].name);
  uniapi_call_error(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
  uni_msg_destroy(msg);
  break;

   case 175:
  if (c->cstate == 184 || c->cstate == 183 ||
      c->cstate == 190 ||
      c->cstate == 197 || c->cstate == 201) {





   unx_add_party_rej_request(c, msg, cookie);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1,
      "add-party-rej.request in cs=%s",
      callstates[c->cstate].name);
  uniapi_call_error(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
  uni_msg_destroy(msg);
  break;

   case 161:
  if (c->cstate != 189 && c->cstate != 188 &&
      c->cstate != 200 && c->cstate != 199 &&
      c->cstate != 192) {




   unx_drop_party_request(c, msg, cookie);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1, "drop-party.request in cs=%s",
      callstates[c->cstate].name);
  uniapi_call_error(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
  uni_msg_destroy(msg);
  break;

   case 163:
  if (c->cstate != 189 && c->cstate != 188 &&
      c->cstate != 200 && c->cstate != 199 &&
      c->cstate != 192) {




   unx_drop_party_ack_request(c, msg, cookie);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1,
      "drop-party-ack.request in cs=%s",
      callstates[c->cstate].name);
  uniapi_call_error(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
  uni_msg_destroy(msg);
  break;

   case 181:
     {
  struct uni *uni = c->uni;

  uni_destroy_call(c, 0);
  uniapi_uni_error(uni, UNIAPI_OK, cookie, UNI_CALLSTATE_U0);
  break;
     }




   case 134:
  if (c->cstate == 186 || c->cstate == 195) {


   u4n7_t301(c);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1, "T301 in cs=%s",
      callstates[c->cstate].name);
  break;

   case 133:
  if (c->cstate == 191 || c->cstate == 196) {


   u1n6_t303(c);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1, "T303 in cs=%s",
      callstates[c->cstate].name);
  break;

   case 132:
  if (c->cstate == 189 || c->cstate == 199) {


   u11n12_t308(c);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1, "T308 in cs=%s",
      callstates[c->cstate].name);
  break;

   case 131:
  if (c->cstate == 187 || c->cstate == 193) {


   u3n9_t310(c);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1, "T310 in cs=%s",
      callstates[c->cstate].name);
  break;

   case 130:
  if (c->cstate == 183) {

   u8_t313(c);
   break;
  }
  VERBOSE(c->uni, UNI_FAC_ERR, 1, "T313 in cs=%s",
      callstates[c->cstate].name);
  break;

   case 129:


  unx_t322(c);
  break;

   case 171:
  CALL_FREE(c);
  break;




   case 162:
  if (c->uni->proto == UNIPROTO_UNI40U)

   ux_drop_party_indication(c, msg);
  else

   nx_drop_party_indication(c, msg);
  break;

   case 164:
  if (c->uni->proto == UNIPROTO_UNI40U)

   ux_drop_party_ack_indication(c, msg);
  else

   nx_drop_party_ack_indication(c, msg);
  break;

   case 176:
  if (c->uni->proto == UNIPROTO_UNI40U)

   ux_add_party_rej_indication(c, msg);
  else

   nx_add_party_rej_indication(c, msg);
  break;


   case 144:


  if (uni_party_act_count(c, 2) != 0)
   (void)uni_send_output(u, c->uni);
  else if(c->cstate != 189) {
   c->uni->cause = u->u.drop_party.cause;
   clear_callD(c);
  }
  UNI_FREE(u);
  break;

   case 143:


  if (uni_party_act_count(c, 2) != 0)
   (void)uni_send_output(u, c->uni);
  else if (c->cstate != 189) {
   c->uni->cause = u->u.drop_party_ack.cause;
   clear_callD(c);
  }
  UNI_FREE(u);
  break;

   case 145:


  unx_send_add_party_rej(c, u);
  break;

   case 142:


  unx_send_party_status_enq(c, u);
  break;

   case 151:
  c->uni->funcs->uni_output(c->uni, c->uni->arg,
      UNIAPI_PARTY_DESTROYED, cookie, msg);
  break;

   case 160:
  break;
 }

 return;

  drop:



 uni_msg_destroy(msg);
 UNI_FREE(u);
}
