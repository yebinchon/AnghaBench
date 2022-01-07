
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct rrsetinfo {scalar_t__ rri_rdclass; scalar_t__ rri_rdtype; int rri_nrdatas; int rri_nsigs; struct rdatainfo* rri_sigs; struct rdatainfo* rri_rdatas; int * rri_name; int rri_flags; int rri_ttl; } ;
struct rdatainfo {int * rdi_data; int rdi_length; } ;
struct dns_rr {scalar_t__ class; scalar_t__ type; int size; int rdata; struct dns_rr* next; int name; int ttl; } ;
struct TYPE_4__ {int qdcount; int ancount; int ad; } ;
struct dns_response {struct dns_rr* answer; TYPE_2__ header; TYPE_1__* query; } ;
struct __res_state {int options; } ;
typedef int answer ;
struct TYPE_3__ {scalar_t__ class; scalar_t__ type; } ;


 int ANSWER_BUFFER_SIZE ;
 int ERRSET_FAIL ;
 int ERRSET_INVAL ;
 int ERRSET_NODATA ;
 int ERRSET_NOMEMORY ;
 int ERRSET_NONAME ;
 int ERRSET_SUCCESS ;


 int RES_DEBUG ;
 int RES_INIT ;
 int RES_USE_DNSSEC ;
 int RES_USE_EDNS0 ;
 int RRSET_VALIDATED ;
 scalar_t__ T_RRSIG ;
 struct __res_state* _THREAD_PRIVATE (int ,int ,int *) ;
 int _res ;
 void* calloc (int,int) ;
 void* count_dns_rr (struct dns_rr*,scalar_t__,scalar_t__) ;
 int free_dns_response (struct dns_response*) ;
 int freerrset (struct rrsetinfo*) ;
 int h_errno ;
 int * malloc (int ) ;
 int memcpy (int *,int ,int ) ;
 struct dns_response* parse_dns_response (int *,int) ;
 int res_init () ;
 int res_query (char const*,int,int,int *,int) ;
 int * strdup (int ) ;

int
getrrsetbyname(const char *hostname, unsigned int rdclass,
    unsigned int rdtype, unsigned int flags,
    struct rrsetinfo **res)
{
 struct __res_state *_resp = _THREAD_PRIVATE(_res, _res, &_res);
 int result;
 struct rrsetinfo *rrset = ((void*)0);
 struct dns_response *response = ((void*)0);
 struct dns_rr *rr;
 struct rdatainfo *rdata;
 int length;
 unsigned int index_ans, index_sig;
 u_char answer[ANSWER_BUFFER_SIZE];


 if (rdclass > 0xffff || rdtype > 0xffff) {
  result = ERRSET_INVAL;
  goto fail;
 }


 if (rdclass == 0xff || rdtype == 0xff) {
  result = ERRSET_INVAL;
  goto fail;
 }


 if (flags) {
  result = ERRSET_INVAL;
  goto fail;
 }


 if ((_resp->options & RES_INIT) == 0 && res_init() == -1) {
  result = ERRSET_FAIL;
  goto fail;
 }
 length = res_query(hostname, (signed int) rdclass, (signed int) rdtype,
     answer, sizeof(answer));
 if (length < 0) {
  switch(h_errno) {
  case 129:
   result = ERRSET_NONAME;
   goto fail;
  case 128:
   result = ERRSET_NODATA;
   goto fail;
  default:
   result = ERRSET_FAIL;
   goto fail;
  }
 }


 response = parse_dns_response(answer, length);
 if (response == ((void*)0)) {
  result = ERRSET_FAIL;
  goto fail;
 }

 if (response->header.qdcount != 1) {
  result = ERRSET_FAIL;
  goto fail;
 }


 rrset = calloc(1, sizeof(struct rrsetinfo));
 if (rrset == ((void*)0)) {
  result = ERRSET_NOMEMORY;
  goto fail;
 }
 rrset->rri_rdclass = response->query->class;
 rrset->rri_rdtype = response->query->type;
 rrset->rri_ttl = response->answer->ttl;
 rrset->rri_nrdatas = response->header.ancount;
 rrset->rri_name = strdup(response->answer->name);
 if (rrset->rri_name == ((void*)0)) {
  result = ERRSET_NOMEMORY;
  goto fail;
 }


 rrset->rri_nrdatas = count_dns_rr(response->answer, rrset->rri_rdclass,
     rrset->rri_rdtype);
 rrset->rri_nsigs = count_dns_rr(response->answer, rrset->rri_rdclass,
     T_RRSIG);


 rrset->rri_rdatas = calloc(rrset->rri_nrdatas,
     sizeof(struct rdatainfo));
 if (rrset->rri_rdatas == ((void*)0)) {
  result = ERRSET_NOMEMORY;
  goto fail;
 }


 if (rrset->rri_nsigs > 0) {
  rrset->rri_sigs = calloc(rrset->rri_nsigs, sizeof(struct rdatainfo));
  if (rrset->rri_sigs == ((void*)0)) {
   result = ERRSET_NOMEMORY;
   goto fail;
  }
 }


 for (rr = response->answer, index_ans = 0, index_sig = 0;
     rr; rr = rr->next) {

  rdata = ((void*)0);

  if (rr->class == rrset->rri_rdclass &&
      rr->type == rrset->rri_rdtype)
   rdata = &rrset->rri_rdatas[index_ans++];

  if (rr->class == rrset->rri_rdclass &&
      rr->type == T_RRSIG)
   rdata = &rrset->rri_sigs[index_sig++];

  if (rdata) {
   rdata->rdi_length = rr->size;
   rdata->rdi_data = malloc(rr->size);

   if (rdata->rdi_data == ((void*)0)) {
    result = ERRSET_NOMEMORY;
    goto fail;
   }
   memcpy(rdata->rdi_data, rr->rdata, rr->size);
  }
 }
 free_dns_response(response);

 *res = rrset;
 return (ERRSET_SUCCESS);

fail:
 if (rrset != ((void*)0))
  freerrset(rrset);
 if (response != ((void*)0))
  free_dns_response(response);
 return (result);
}
