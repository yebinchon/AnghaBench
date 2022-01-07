
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_4__ {int * addr; } ;
typedef TYPE_1__ CLIENT ;


 int GetEtherAddr (int *) ;
 int LOG_ERR ;
 int RMP_ADDRLEN ;
 scalar_t__ malloc (int) ;
 int memmove (int *,int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int syslog (int ,char*,int ) ;

CLIENT *
NewClient(u_int8_t *addr)
{
 CLIENT *ctmp;

 if ((ctmp = (CLIENT *) malloc(sizeof(CLIENT))) == ((void*)0)) {
  syslog(LOG_ERR, "NewClient: out of memory (%s)",
         GetEtherAddr(addr));
  return(((void*)0));
 }

 memset(ctmp, 0, sizeof(CLIENT));
 memmove(&ctmp->addr[0], addr, RMP_ADDRLEN);
 return(ctmp);
}
