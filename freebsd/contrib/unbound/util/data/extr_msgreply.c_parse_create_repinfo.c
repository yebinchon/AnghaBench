
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reply_info {int dummy; } ;
struct regional {int dummy; } ;
struct msg_parse {int rrset_count; int ar_rrsets; int ns_rrsets; int an_rrsets; int qdcount; int flags; } ;


 struct reply_info* construct_reply_info_base (struct regional*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int sec_status_unchecked ;

__attribute__((used)) static int
parse_create_repinfo(struct msg_parse* msg, struct reply_info** rep,
 struct regional* region)
{
 *rep = construct_reply_info_base(region, msg->flags, msg->qdcount, 0,
  0, 0, msg->an_rrsets, msg->ns_rrsets, msg->ar_rrsets,
  msg->rrset_count, sec_status_unchecked);
 if(!*rep)
  return 0;
 return 1;
}
