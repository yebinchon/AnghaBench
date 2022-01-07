
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dns_msg {TYPE_1__* rep; } ;
struct TYPE_2__ {scalar_t__ security; } ;


 int VERB_ALGO ;
 scalar_t__ sec_status_bogus ;
 int sec_status_to_string (scalar_t__) ;
 int verbose (int ,char*,int ) ;

__attribute__((used)) static int
already_validated(struct dns_msg* ret_msg)
{

 if (ret_msg && ret_msg->rep->security > sec_status_bogus)
 {
  verbose(VERB_ALGO, "response has already been validated: %s",
   sec_status_to_string(ret_msg->rep->security));
  return 1;
 }
 return 0;
}
