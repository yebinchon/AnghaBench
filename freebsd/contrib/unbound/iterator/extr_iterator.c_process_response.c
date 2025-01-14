
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct outbound_entry {int dummy; } ;
struct msg_parse {int flags; scalar_t__ opt_list; } ;
struct module_qstate {TYPE_4__* env; TYPE_3__* reply; int qinfo; int region; int edns_opts_back_in; } ;
struct iter_qstate {int sent_count; int caps_fallback; int caps_server; scalar_t__ caps_minimisation_state; scalar_t__ minimisation_state; int outlist; int num_current_queries; void* state; int * caps_reply; TYPE_7__* response; TYPE_7__* caps_response; TYPE_5__* dp; int qinfo_out; } ;
struct iter_env {int dummy; } ;
struct edns_data {int flags; scalar_t__ opt_list; } ;
typedef int sldns_buffer ;
typedef enum module_ev { ____Placeholder_module_ev } module_ev ;
typedef int edns ;
struct TYPE_13__ {int * rep; int qinfo; } ;
struct TYPE_12__ {int name; } ;
struct TYPE_11__ {int scratch; TYPE_1__* cfg; } ;
struct TYPE_10__ {int addrlen; int addr; TYPE_2__* c; } ;
struct TYPE_9__ {int * buffer; } ;
struct TYPE_8__ {scalar_t__ qname_minimisation; scalar_t__ use_caps_bits_for_id; } ;


 int BIT_CD ;
 scalar_t__ DONOT_MINIMISE_STATE ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 int LDNS_RCODE_SERVFAIL ;
 void* QUERYTARGETS_STATE ;
 void* QUERY_RESP_STATE ;
 scalar_t__ SKIP_MINIMISE_STATE ;
 scalar_t__ VERB_ALGO ;
 scalar_t__ VERB_DETAIL ;
 scalar_t__ caps_failed_rcode (int *) ;
 int caps_strip_reply (int *) ;
 TYPE_7__* dns_alloc_msg (int *,struct msg_parse*,int ) ;
 int edns_opt_copy_region (scalar_t__,int ) ;
 int errinf (struct module_qstate*,char*) ;
 int error_response (struct module_qstate*,int,int ) ;
 int inplace_cb_edns_back_parsed_call (TYPE_4__*,struct module_qstate*) ;
 int is_caps_whitelisted (struct iter_env*,struct iter_qstate*) ;
 int iter_dec_attempts (TYPE_5__*,int) ;
 int iter_handle (struct module_qstate*,struct iter_qstate*,struct iter_env*,int) ;
 int log_dns_msg (char*,int *,int *) ;
 int log_err (char*) ;
 int log_name_addr (scalar_t__,char*,int ,int *,int ) ;
 int log_query_info (scalar_t__,char*,int *) ;
 int memset (struct msg_parse*,int ,int) ;
 int module_event_capsfail ;
 int module_event_error ;
 int module_event_noreply ;
 int module_event_reply ;
 int outbound_list_remove (int *,struct outbound_entry*) ;
 scalar_t__ parse_extract_edns (struct msg_parse*,struct msg_parse*,int ) ;
 scalar_t__ parse_packet (int *,struct msg_parse*,int ) ;
 scalar_t__ regional_alloc (int ,int) ;
 int reply_equal (int *,int *,int ) ;
 int scrub_message (int *,struct msg_parse*,int *,int ,int ,TYPE_4__*,struct iter_env*) ;
 int sldns_buffer_set_position (int *,int ) ;
 int verbose (scalar_t__,char*) ;
 scalar_t__ verbosity ;

__attribute__((used)) static void
process_response(struct module_qstate* qstate, struct iter_qstate* iq,
 struct iter_env* ie, int id, struct outbound_entry* outbound,
 enum module_ev event)
{
 struct msg_parse* prs;
 struct edns_data edns;
 sldns_buffer* pkt;

 verbose(VERB_ALGO, "process_response: new external response event");
 iq->response = ((void*)0);
 iq->state = QUERY_RESP_STATE;
 if(event == module_event_noreply || event == module_event_error) {
  if(event == module_event_noreply && iq->sent_count >= 3 &&
   qstate->env->cfg->use_caps_bits_for_id &&
   !iq->caps_fallback && !is_caps_whitelisted(ie, iq)) {

   iq->caps_fallback = 1;
   iq->caps_server = 0;
   iq->caps_reply = ((void*)0);
   iq->caps_response = ((void*)0);
   iq->caps_minimisation_state = DONOT_MINIMISE_STATE;
   iq->state = QUERYTARGETS_STATE;
   iq->num_current_queries--;


   iter_dec_attempts(iq->dp, 3);
   verbose(VERB_DETAIL, "Capsforid: timeouts, starting fallback");
   goto handle_it;
  }
  goto handle_it;
 }
 if( (event != module_event_reply && event != module_event_capsfail)
  || !qstate->reply) {
  log_err("Bad event combined with response");
  outbound_list_remove(&iq->outlist, outbound);
  errinf(qstate, "module iterator received wrong internal event with a response message");
  (void)error_response(qstate, id, LDNS_RCODE_SERVFAIL);
  return;
 }


 prs = (struct msg_parse*)regional_alloc(qstate->env->scratch,
  sizeof(struct msg_parse));
 if(!prs) {
  log_err("out of memory on incoming message");

  goto handle_it;
 }
 memset(prs, 0, sizeof(*prs));
 memset(&edns, 0, sizeof(edns));
 pkt = qstate->reply->c->buffer;
 sldns_buffer_set_position(pkt, 0);
 if(parse_packet(pkt, prs, qstate->env->scratch) != LDNS_RCODE_NOERROR) {
  verbose(VERB_ALGO, "parse error on reply packet");
  goto handle_it;
 }

 if(parse_extract_edns(prs, &edns, qstate->env->scratch) !=
  LDNS_RCODE_NOERROR)
  goto handle_it;


 if(edns.opt_list) {
  qstate->edns_opts_back_in = edns_opt_copy_region(edns.opt_list,
   qstate->region);
  if(!qstate->edns_opts_back_in) {
   log_err("out of memory on incoming message");

   goto handle_it;
  }
  if(!inplace_cb_edns_back_parsed_call(qstate->env, qstate)) {
   log_err("unable to call edns_back_parsed callback");
   goto handle_it;
  }
 }


 prs->flags &= ~BIT_CD;


 if(!scrub_message(pkt, prs, &iq->qinfo_out, iq->dp->name,
  qstate->env->scratch, qstate->env, ie)) {

  if(event == module_event_capsfail && !iq->caps_fallback) {
   iq->caps_fallback = 1;
   iq->caps_server = 0;
   iq->caps_reply = ((void*)0);
   iq->caps_response = ((void*)0);
   iq->caps_minimisation_state = DONOT_MINIMISE_STATE;
   iq->state = QUERYTARGETS_STATE;
   iq->num_current_queries--;
   verbose(VERB_DETAIL, "Capsforid: scrub failed, starting fallback with no response");
  }
  goto handle_it;
 }


 iq->response = dns_alloc_msg(pkt, prs, qstate->region);
 if(!iq->response)
  goto handle_it;
 log_query_info(VERB_DETAIL, "response for", &qstate->qinfo);
 log_name_addr(VERB_DETAIL, "reply from", iq->dp->name,
  &qstate->reply->addr, qstate->reply->addrlen);
 if(verbosity >= VERB_ALGO)
  log_dns_msg("incoming scrubbed packet:", &iq->response->qinfo,
   iq->response->rep);

 if(event == module_event_capsfail || iq->caps_fallback) {
  if(qstate->env->cfg->qname_minimisation &&
   iq->minimisation_state != DONOT_MINIMISE_STATE) {


   iq->minimisation_state = SKIP_MINIMISE_STATE;
  }


  caps_strip_reply(iq->response->rep);

  if(iq->caps_fallback &&
   iq->caps_minimisation_state != iq->minimisation_state) {


   iq->caps_fallback = 0;
  }

  if(!iq->caps_fallback) {

   iq->caps_fallback = 1;
   iq->caps_server = 0;
   iq->caps_reply = iq->response->rep;
   iq->caps_response = iq->response;
   iq->caps_minimisation_state = iq->minimisation_state;
   iq->state = QUERYTARGETS_STATE;
   iq->num_current_queries--;
   verbose(VERB_DETAIL, "Capsforid: starting fallback");
   goto handle_it;
  } else {

   if(!iq->caps_reply) {
    iq->caps_reply = iq->response->rep;
    iq->caps_response = iq->response;
    iq->caps_server = -1;

   } else if(caps_failed_rcode(iq->caps_reply) &&
    !caps_failed_rcode(iq->response->rep)) {

    iq->caps_reply = iq->response->rep;
    iq->caps_response = iq->response;
   } else if(!caps_failed_rcode(iq->caps_reply) &&
    caps_failed_rcode(iq->response->rep)) {




   } else if(caps_failed_rcode(iq->caps_reply) &&
    caps_failed_rcode(iq->response->rep)) {


   } else if(!reply_equal(iq->response->rep, iq->caps_reply,
    qstate->env->scratch)) {
    verbose(VERB_DETAIL, "Capsforid fallback: "
     "getting different replies, failed");
    outbound_list_remove(&iq->outlist, outbound);
    errinf(qstate, "0x20 failed, then got different replies in fallback");
    (void)error_response(qstate, id,
     LDNS_RCODE_SERVFAIL);
    return;
   }

   iq->caps_server++;
   iq->state = QUERYTARGETS_STATE;
   iq->num_current_queries--;
   verbose(VERB_DETAIL, "Capsforid: reply is equal. "
    "go to next fallback");
   goto handle_it;
  }
 }
 iq->caps_fallback = 0;

handle_it:
 outbound_list_remove(&iq->outlist, outbound);
 iter_handle(qstate, iq, ie, id);
}
