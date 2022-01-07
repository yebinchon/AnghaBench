
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SADB_SATYPE_UNSPEC ;
 scalar_t__ pfkey_recv_register (int ) ;
 scalar_t__ pfkey_send_register (int ,int ) ;
 int so ;

int
get_supported()
{

 if (pfkey_send_register(so, SADB_SATYPE_UNSPEC) < 0)
  return -1;

 if (pfkey_recv_register(so) < 0)
  return -1;

 return 0;
}
