
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct sldns_file_parse_state {int default_ttl; int origin_len; scalar_t__ prev_rr_len; int * prev_rr; int * origin; } ;
struct auth_xfer {int namelen; scalar_t__ dclass; TYPE_1__* task_transfer; int name; } ;
struct auth_chunk {int dummy; } ;
typedef int sldns_buffer ;
typedef int rr ;
typedef int pstate ;
struct TYPE_2__ {struct auth_chunk* chunks_first; } ;


 int LDNS_RR_BUF_SIZE ;
 int LDNS_WIREPARSE_ERROR (int) ;
 int LDNS_WIREPARSE_OFFSET (int) ;
 int chunkline_non_comment_RR (struct auth_chunk**,size_t*,int *,struct sldns_file_parse_state*) ;
 int log_err (char*,...) ;
 int memmove (int *,int ,int) ;
 int memset (struct sldns_file_parse_state*,int ,int) ;
 scalar_t__ sldns_buffer_begin (int *) ;
 int sldns_get_errorstr_parse (int ) ;
 int sldns_str2wire_rr_buf (char*,int *,size_t*,size_t*,int,int *,int,int *,scalar_t__) ;
 scalar_t__ sldns_wirerr_get_class (int *,size_t,size_t) ;

__attribute__((used)) static int
http_zonefile_syntax_check(struct auth_xfer* xfr, sldns_buffer* buf)
{
 uint8_t rr[LDNS_RR_BUF_SIZE];
 size_t rr_len, dname_len = 0;
 struct sldns_file_parse_state pstate;
 struct auth_chunk* chunk;
 size_t chunk_pos;
 int e;
 memset(&pstate, 0, sizeof(pstate));
 pstate.default_ttl = 3600;
 if(xfr->namelen < sizeof(pstate.origin)) {
  pstate.origin_len = xfr->namelen;
  memmove(pstate.origin, xfr->name, xfr->namelen);
 }
 chunk = xfr->task_transfer->chunks_first;
 chunk_pos = 0;
 if(!chunkline_non_comment_RR(&chunk, &chunk_pos, buf, &pstate)) {
  return 0;
 }
 rr_len = sizeof(rr);
 e=sldns_str2wire_rr_buf((char*)sldns_buffer_begin(buf), rr, &rr_len,
  &dname_len, pstate.default_ttl,
  pstate.origin_len?pstate.origin:((void*)0), pstate.origin_len,
  pstate.prev_rr_len?pstate.prev_rr:((void*)0), pstate.prev_rr_len);
 if(e != 0) {
  log_err("parse failure on first RR[%d]: %s",
   LDNS_WIREPARSE_OFFSET(e),
   sldns_get_errorstr_parse(LDNS_WIREPARSE_ERROR(e)));
  return 0;
 }

 if(sldns_wirerr_get_class(rr, rr_len, dname_len) != xfr->dclass) {
  log_err("parse failure: first record in downloaded zonefile "
   "from wrong RR class");
  return 0;
 }
 return 1;
}
