
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct ub_packed_rrset_key {int dummy; } ;
typedef int s ;
typedef int RES ;


 int packed_rr_to_string (struct ub_packed_rrset_key*,size_t,int ,char*,int) ;
 int ssl_printf (int *,char*,...) ;

__attribute__((used)) static int
dump_rrset_line(RES* ssl, struct ub_packed_rrset_key* k, time_t now, size_t i)
{
 char s[65535];
 if(!packed_rr_to_string(k, i, now, s, sizeof(s))) {
  return ssl_printf(ssl, "BADRR\n");
 }
 return ssl_printf(ssl, "%s", s);
}
