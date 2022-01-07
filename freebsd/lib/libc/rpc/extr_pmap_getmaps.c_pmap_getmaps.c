
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct pmaplist {int dummy; } ;
typedef int rpcproc_t ;
typedef int CLIENT ;


 scalar_t__ CLNT_CALL (int *,int ,int ,int *,int ,struct pmaplist**,struct timeval) ;
 int CLNT_DESTROY (int *) ;
 int PMAPPORT ;
 scalar_t__ PMAPPROC_DUMP ;
 int PMAPPROG ;
 int PMAPVERS ;
 scalar_t__ RPC_SUCCESS ;
 int assert (int ) ;
 int clnt_perror (int *,char*) ;
 int * clnttcp_create (struct sockaddr_in*,int ,int ,int*,int,int) ;
 scalar_t__ htons (int ) ;
 scalar_t__ xdr_pmaplist ;
 scalar_t__ xdr_void ;

struct pmaplist *
pmap_getmaps(struct sockaddr_in *address)
{
 struct pmaplist *head = ((void*)0);
 int sock = -1;
 struct timeval minutetimeout;
 CLIENT *client;

 assert(address != ((void*)0));

 minutetimeout.tv_sec = 60;
 minutetimeout.tv_usec = 0;
 address->sin_port = htons(PMAPPORT);
 client = clnttcp_create(address, PMAPPROG,
     PMAPVERS, &sock, 50, 500);
 if (client != ((void*)0)) {
  if (CLNT_CALL(client, (rpcproc_t)PMAPPROC_DUMP,
      (xdrproc_t)xdr_void, ((void*)0),
      (xdrproc_t)xdr_pmaplist, &head, minutetimeout) !=
      RPC_SUCCESS) {
   clnt_perror(client, "pmap_getmaps rpc problem");
  }
  CLNT_DESTROY(client);
 }
 address->sin_port = 0;
 return (head);
}
