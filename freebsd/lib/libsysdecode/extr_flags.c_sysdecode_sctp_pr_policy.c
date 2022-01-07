
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int sctpprpolicy ;

const char *
sysdecode_sctp_pr_policy(int policy)
{

 return (lookup_value(sctpprpolicy, policy));
}
