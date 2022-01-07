
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipf_auth_main_unload () ;
 int ipf_frag_main_unload () ;
 int ipf_main_unload () ;
 int ipf_nat_main_unload () ;
 int ipf_proxy_main_unload () ;
 int ipf_state_main_unload () ;

int
ipf_unload_all()
{
 if (ipf_proxy_main_unload() == -1)
  return -1;

 if (ipf_auth_main_unload() == -1)
  return -1;

 if (ipf_frag_main_unload() == -1)
  return -1;

 if (ipf_nat_main_unload() == -1)
  return -1;

 if (ipf_state_main_unload() == -1)
  return -1;

 if (ipf_main_unload() == -1)
  return -1;

 return 0;
}
