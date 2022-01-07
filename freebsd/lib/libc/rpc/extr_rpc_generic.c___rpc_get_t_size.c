
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;




 int RPC_MAXDATASIZE ;
 int UDPMSGSIZE ;

u_int

__rpc_get_t_size(int af, int proto, int size)
{
 int maxsize, defsize;

 maxsize = 256 * 1024;
 switch (proto) {
 case 129:
  defsize = 64 * 1024;
  break;
 case 128:
  defsize = UDPMSGSIZE;
  break;
 default:
  defsize = RPC_MAXDATASIZE;
  break;
 }
 if (size == 0)
  return defsize;


 return (size > maxsize ? (u_int)maxsize : (u_int)size);
}
