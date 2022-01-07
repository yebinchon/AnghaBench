
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int dummy; } ;
struct query_info {int dummy; } ;
struct module_env {int dummy; } ;
struct local_zone {scalar_t__ soa; } ;
struct local_data {scalar_t__ rrsets; } ;
struct edns_data {int dummy; } ;
struct comm_reply {int dummy; } ;
typedef int sldns_buffer ;
typedef enum localzone_type { ____Placeholder_localzone_type } localzone_type ;


 int BIT_AA ;
 int LDNS_RCODE_NOERROR ;
 int LDNS_RCODE_NXDOMAIN ;
 int LDNS_RCODE_REFUSED ;
 int local_encode (struct query_info*,struct module_env*,struct edns_data*,struct comm_reply*,int *,struct regional*,scalar_t__,int ,int) ;
 int local_error_encode (struct query_info*,struct module_env*,struct edns_data*,struct comm_reply*,int *,struct regional*,int,int) ;
 int local_zone_always_nxdomain ;
 int local_zone_always_refuse ;
 int local_zone_always_transparent ;
 int local_zone_deny ;
 int local_zone_inform_deny ;
 int local_zone_inform_redirect ;
 int local_zone_redirect ;
 int local_zone_refuse ;
 int local_zone_static ;
 int local_zone_typetransparent ;
 int sldns_buffer_clear (int *) ;
 int sldns_buffer_flip (int *) ;

__attribute__((used)) static int
lz_zone_answer(struct local_zone* z, struct module_env* env,
 struct query_info* qinfo, struct edns_data* edns,
 struct comm_reply* repinfo, sldns_buffer* buf, struct regional* temp,
 struct local_data* ld, enum localzone_type lz_type)
{
 if(lz_type == local_zone_deny || lz_type == local_zone_inform_deny) {

  sldns_buffer_clear(buf);
  sldns_buffer_flip(buf);
  return 1;
 } else if(lz_type == local_zone_refuse
  || lz_type == local_zone_always_refuse) {
  local_error_encode(qinfo, env, edns, repinfo, buf, temp,
   LDNS_RCODE_REFUSED, (LDNS_RCODE_REFUSED|BIT_AA));
  return 1;
 } else if(lz_type == local_zone_static ||
  lz_type == local_zone_redirect ||
  lz_type == local_zone_inform_redirect ||
  lz_type == local_zone_always_nxdomain) {







  int rcode = (ld || lz_type == local_zone_redirect ||
   lz_type == local_zone_inform_redirect)?
   LDNS_RCODE_NOERROR:LDNS_RCODE_NXDOMAIN;
  if(z->soa)
   return local_encode(qinfo, env, edns, repinfo, buf, temp,
    z->soa, 0, rcode);
  local_error_encode(qinfo, env, edns, repinfo, buf, temp, rcode,
   (rcode|BIT_AA));
  return 1;
 } else if(lz_type == local_zone_typetransparent
  || lz_type == local_zone_always_transparent) {

  return 0;
 }




 if(ld && ld->rrsets) {
  int rcode = LDNS_RCODE_NOERROR;
  if(z->soa)
   return local_encode(qinfo, env, edns, repinfo, buf, temp,
    z->soa, 0, rcode);
  local_error_encode(qinfo, env, edns, repinfo, buf, temp, rcode,
   (rcode|BIT_AA));
  return 1;
 }


 return 0;
}
