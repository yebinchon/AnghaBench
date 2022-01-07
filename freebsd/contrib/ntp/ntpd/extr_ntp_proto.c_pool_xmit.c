
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xpkt ;
struct pkt {int xmt; int reftime; void* rootdisp; void* rootdelay; int refid; int precision; int ppoll; int stratum; int li_vn_mode; } ;
struct peer {size_t ttl; int throttle; int minpoll; int sent; int aorg; int hpoll; int version; TYPE_1__* ai; int hostname; scalar_t__ associd; int srcadr; int * addrs; } ;
struct interface {int dummy; } ;
struct addrinfo {int ai_protocol; int ai_socktype; int ai_family; } ;
typedef int sockaddr_u ;
struct TYPE_5__ {int rflags; } ;
typedef TYPE_2__ r4addr ;
typedef int l_fp ;
struct TYPE_4__ {struct TYPE_4__* ai_next; scalar_t__ ai_addr; } ;


 int AF (int *) ;
 int DPRINTF (int,char*) ;
 int DTOFP (int ) ;
 int DTOUFP (int ) ;
 int HTONL_FP (int *,int *) ;
 void* HTONS_FP (int ) ;
 int IPPROTO_UDP ;
 int LEN_PKT_NOMAC ;
 int LOG_ERR ;
 int LOG_INFO ;
 int MODE_CLIENT ;
 int PKT_LI_VN_MODE (int ,int ,int ) ;
 scalar_t__ POOL_SOLICIT_WINDOW ;
 int RES_FLAGS ;
 int SOCK_DGRAM ;
 int STRATUM_TO_PKT (int ) ;
 int ZERO (struct addrinfo) ;
 scalar_t__ current_time ;
 struct peer* findexistingpeer (int *,int *,int *,int ,int ,int *) ;
 struct interface* findinterface (int *) ;
 int free (int *) ;
 int get_systime (int *) ;
 int getaddrinfo_sometime (int ,char*,struct addrinfo*,int ,int *,void*) ;
 int latoa (struct interface*) ;
 int memset (struct pkt*,int ,int) ;
 int msyslog (int ,char*,int ) ;
 int pool_name_resolved ;
 int restrict_source (int *,int ,scalar_t__) ;
 int restrictions (int *,TYPE_2__*) ;
 int sendpkt (int *,struct interface*,int ,struct pkt*,int ) ;
 int stoa (int *) ;
 int sys_leap ;
 int sys_precision ;
 int sys_refid ;
 int sys_reftime ;
 int sys_rootdelay ;
 int sys_rootdisp ;
 int sys_stratum ;
 int * sys_ttl ;
 size_t sys_ttlmax ;

__attribute__((used)) static void
pool_xmit(
 struct peer *pool
 )
{
}
