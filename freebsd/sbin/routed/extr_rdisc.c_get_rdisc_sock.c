
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int BADERR (int,char*) ;
 int IPPROTO_ICMP ;
 int SOCK_RAW ;
 int fix_select () ;
 int fix_sock (scalar_t__,char*) ;
 scalar_t__ rdisc_sock ;
 scalar_t__ socket (int ,int ,int ) ;

__attribute__((used)) static void
get_rdisc_sock(void)
{
 if (rdisc_sock < 0) {
  rdisc_sock = socket(AF_INET, SOCK_RAW, IPPROTO_ICMP);
  if (rdisc_sock < 0)
   BADERR(1,"rdisc_sock = socket()");
  fix_sock(rdisc_sock,"rdisc_sock");
  fix_select();
 }
}
