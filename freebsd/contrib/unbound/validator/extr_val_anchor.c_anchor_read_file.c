
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int dummy; } ;
struct sldns_file_parse_state {int default_ttl; int lineno; } ;
typedef int sldns_buffer ;
typedef int pst ;
typedef int FILE ;


 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 int LDNS_WIREPARSE_OFFSET (int) ;
 struct trust_anchor* anchor_store_new_rr (struct val_anchors*,int *,size_t,size_t) ;
 int errno ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char const*,char*) ;
 int log_err (char*,char const*,int,...) ;
 int memset (struct sldns_file_parse_state*,int ,int) ;
 int * sldns_buffer_begin (int *) ;
 size_t sldns_buffer_capacity (int *) ;
 int sldns_fp2wire_rr_buf (int *,int *,size_t*,size_t*,struct sldns_file_parse_state*) ;
 int sldns_get_errorstr_parse (int) ;
 scalar_t__ sldns_wirerr_get_type (int *,size_t,size_t) ;
 int strerror (int ) ;

__attribute__((used)) static struct trust_anchor*
anchor_read_file(struct val_anchors* anchors, sldns_buffer* buffer,
 const char* fname, int onlyone)
{
 struct trust_anchor* ta = ((void*)0), *tanew;
 struct sldns_file_parse_state pst;
 int status;
 size_t len, dname_len;
 uint8_t* rr = sldns_buffer_begin(buffer);
 int ok = 1;
 FILE* in = fopen(fname, "r");
 if(!in) {
  log_err("error opening file %s: %s", fname, strerror(errno));
  return 0;
 }
 memset(&pst, 0, sizeof(pst));
 pst.default_ttl = 3600;
 pst.lineno = 1;
 while(!feof(in)) {
  len = sldns_buffer_capacity(buffer);
  dname_len = 0;
  status = sldns_fp2wire_rr_buf(in, rr, &len, &dname_len, &pst);
  if(len == 0)
   continue;
  if(status != 0) {
   log_err("parse error in %s:%d:%d : %s", fname,
    pst.lineno, LDNS_WIREPARSE_OFFSET(status),
    sldns_get_errorstr_parse(status));
   ok = 0;
   break;
  }
  if(sldns_wirerr_get_type(rr, len, dname_len) !=
   LDNS_RR_TYPE_DS && sldns_wirerr_get_type(rr, len,
   dname_len) != LDNS_RR_TYPE_DNSKEY) {
   continue;
  }
  if(!(tanew=anchor_store_new_rr(anchors, rr, len, dname_len))) {
   log_err("mem error at %s line %d", fname, pst.lineno);
   ok = 0;
   break;
  }
  if(onlyone && ta && ta != tanew) {
   log_err("error at %s line %d: no multiple anchor "
    "domains allowed (you can have multiple "
    "keys, but they must have the same name).",
    fname, pst.lineno);
   ok = 0;
   break;
  }
  ta = tanew;
 }
 fclose(in);
 if(!ok) return ((void*)0);

 if(!onlyone && !ta) return (struct trust_anchor*)1;
 return ta;
}
