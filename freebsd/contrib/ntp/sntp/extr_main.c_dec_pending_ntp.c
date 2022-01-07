
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sockaddr_u ;


 int INSIST (int) ;
 int TRACE (int,char*) ;
 int check_exit_conditions () ;
 int hostnameaddr (char const*,int *) ;
 scalar_t__ n_pending_ntp ;

void dec_pending_ntp(
 const char * name,
 sockaddr_u * server
 )
{
 if (n_pending_ntp > 0) {
  --n_pending_ntp;
  check_exit_conditions();
 } else {
  INSIST(0 == n_pending_ntp);
  TRACE(1, ("n_pending_ntp was zero before decrement for %s\n",
     hostnameaddr(name, server)));
 }
}
