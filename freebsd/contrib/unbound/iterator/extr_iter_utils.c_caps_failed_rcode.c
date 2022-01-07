
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reply_info {int flags; } ;


 scalar_t__ FLAGS_GET_RCODE (int ) ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RCODE_NXDOMAIN ;

int caps_failed_rcode(struct reply_info* rep)
{
 return !(FLAGS_GET_RCODE(rep->flags) == LDNS_RCODE_NOERROR ||
  FLAGS_GET_RCODE(rep->flags) == LDNS_RCODE_NXDOMAIN);
}
