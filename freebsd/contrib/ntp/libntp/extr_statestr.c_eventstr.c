
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRPT_EVENT ;
 int PEER_EVENT ;
 int crypto_codes ;
 char const* getcode (int,int ) ;
 int peer_codes ;
 int sys_codes ;

const char *
eventstr(
 int num
 )
{
 if (num & PEER_EVENT)
  return (getcode(num & ~PEER_EVENT, peer_codes));




 else
  return (getcode(num, sys_codes));
}
