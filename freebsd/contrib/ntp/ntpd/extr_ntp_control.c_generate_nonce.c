
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32 ;
struct TYPE_2__ {int l_ui; int l_uf; } ;
struct recvbuf {TYPE_1__ recv_time; int recv_srcadr; } ;


 int derive_nonce (int *,int,int) ;
 int snprintf (char*,size_t,char*,int,int,int ) ;

__attribute__((used)) static void generate_nonce(
 struct recvbuf * rbufp,
 char * nonce,
 size_t nonce_octets
 )
{
 u_int32 derived;

 derived = derive_nonce(&rbufp->recv_srcadr,
          rbufp->recv_time.l_ui,
          rbufp->recv_time.l_uf);
 snprintf(nonce, nonce_octets, "%08x%08x%08x",
   rbufp->recv_time.l_ui, rbufp->recv_time.l_uf, derived);
}
