
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct sldns_file_parse_state {size_t prev_rr_len; int * prev_rr; scalar_t__ origin_len; int * origin; int default_ttl; } ;
struct auth_zone {int dummy; } ;
struct auth_xfer {TYPE_2__* task_transfer; } ;
typedef int sldns_buffer ;
typedef int rr ;
struct TYPE_4__ {TYPE_1__* master; } ;
struct TYPE_3__ {int file; int host; } ;


 int LDNS_RR_BUF_SIZE ;
 int LDNS_WIREPARSE_ERROR (int) ;
 int LDNS_WIREPARSE_OFFSET (int) ;
 int az_insert_rr (struct auth_zone*,int *,size_t,size_t,int *) ;
 int log_err (char*,int ,int ,int ,int ,char*) ;
 int memmove (int *,int *,size_t) ;
 scalar_t__ sldns_buffer_begin (int *) ;
 int sldns_get_errorstr_parse (int ) ;
 int sldns_str2wire_rr_buf (char*,int *,size_t*,size_t*,int ,int *,scalar_t__,int *,size_t) ;

__attribute__((used)) static int
http_parse_add_rr(struct auth_xfer* xfr, struct auth_zone* z,
 sldns_buffer* buf, struct sldns_file_parse_state* pstate)
{
 uint8_t rr[LDNS_RR_BUF_SIZE];
 size_t rr_len, dname_len = 0;
 int e;
 char* line = (char*)sldns_buffer_begin(buf);
 rr_len = sizeof(rr);
 e = sldns_str2wire_rr_buf(line, rr, &rr_len, &dname_len,
  pstate->default_ttl,
  pstate->origin_len?pstate->origin:((void*)0), pstate->origin_len,
  pstate->prev_rr_len?pstate->prev_rr:((void*)0), pstate->prev_rr_len);
 if(e != 0) {
  log_err("%s/%s parse failure RR[%d]: %s in '%s'",
   xfr->task_transfer->master->host,
   xfr->task_transfer->master->file,
   LDNS_WIREPARSE_OFFSET(e),
   sldns_get_errorstr_parse(LDNS_WIREPARSE_ERROR(e)),
   line);
  return 0;
 }
 if(rr_len == 0)
  return 1;


 if(dname_len < sizeof(pstate->prev_rr)) {
  memmove(pstate->prev_rr, rr, dname_len);
  pstate->prev_rr_len = dname_len;
 }

 return az_insert_rr(z, rr, rr_len, dname_len, ((void*)0));
}
