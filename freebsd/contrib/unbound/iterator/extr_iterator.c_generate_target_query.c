
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct module_qstate {int dummy; } ;
struct iter_qstate {int dummy; } ;


 int FINISHED_STATE ;
 int INIT_REQUEST_STATE ;
 int VERB_QUERY ;
 int generate_sub_request (int *,size_t,int ,int ,struct module_qstate*,int,struct iter_qstate*,int ,int ,struct module_qstate**,int ) ;
 int log_nametypeclass (int ,char*,int *,int ,int ) ;

__attribute__((used)) static int
generate_target_query(struct module_qstate* qstate, struct iter_qstate* iq,
        int id, uint8_t* name, size_t namelen, uint16_t qtype, uint16_t qclass)
{
 struct module_qstate* subq;
 if(!generate_sub_request(name, namelen, qtype, qclass, qstate,
  id, iq, INIT_REQUEST_STATE, FINISHED_STATE, &subq, 0))
  return 0;
 log_nametypeclass(VERB_QUERY, "new target", name, qtype, qclass);
 return 1;
}
