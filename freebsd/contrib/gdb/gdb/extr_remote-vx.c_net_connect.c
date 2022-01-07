
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; int sin_family; TYPE_1__ sin_addr; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef int destAddr ;


 int AF_INET ;
 int RDBPROG ;
 int RDBVERS ;
 int RPC_ANYSOCK ;
 int clnt_pcreateerror (char*) ;
 int * clnttcp_create (struct sockaddr_in*,int ,int ,int *,int ,int ) ;
 int error (char*) ;
 scalar_t__ gethostbyname (char*) ;
 unsigned long inet_addr (char*) ;
 int memset (struct sockaddr_in*,char,int) ;
 int * pClient ;
 int ptraceSock ;

__attribute__((used)) static void
net_connect (char *host)
{
  struct sockaddr_in destAddr;
  struct hostent *destHost;
  unsigned long addr;




  addr = inet_addr (host);
  if (addr == -1)
    {
      destHost = (struct hostent *) gethostbyname (host);
      if (destHost == ((void*)0))



 error ("Invalid hostname.  Couldn't find remote host address.");
      addr = *(unsigned long *) destHost->h_addr;
    }

  memset (&destAddr, '\0', sizeof (destAddr));

  destAddr.sin_addr.s_addr = addr;
  destAddr.sin_family = AF_INET;
  destAddr.sin_port = 0;





  ptraceSock = RPC_ANYSOCK;
  pClient = clnttcp_create (&destAddr, RDBPROG, RDBVERS, &ptraceSock, 0, 0);



  if (pClient == ((void*)0))
    {
      clnt_pcreateerror ("\tnet_connect");
      error ("Couldn't connect to remote target.");
    }
}
