
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ sa_family; } ;
struct TYPE_17__ {scalar_t__ sa_family; } ;
struct TYPE_20__ {int type; scalar_t__ vers; char* l_name; void* id_num; TYPE_2__ addr; void* pid; TYPE_1__ ctl_addr; } ;
struct TYPE_19__ {int type; void* answer; TYPE_2__ addr; void* id_num; scalar_t__ vers; } ;
typedef TYPE_3__ CTL_RESPONSE ;
typedef TYPE_4__ CTL_MSG ;


 scalar_t__ AF_INET ;

 void* BADADDR ;
 void* BADCTLADDR ;
 void* BADVERSION ;

 void* FAILED ;

 int LOG_NOTICE ;
 int LOG_WARNING ;

 void* NOT_HERE ;
 void* SUCCESS ;
 scalar_t__ TALK_VERSION ;
 void* UNKNOWN_REQUEST ;
 scalar_t__ debug ;
 void* delete_invite (void*) ;
 int do_announce (TYPE_4__*,TYPE_3__*) ;
 TYPE_4__* find_match (TYPE_4__*) ;
 TYPE_4__* find_request (TYPE_4__*) ;
 void* htonl (void*) ;
 scalar_t__ htons (scalar_t__) ;
 int insert_table (TYPE_4__*,TYPE_3__*) ;
 int isprint (char) ;
 void* ntohl (void*) ;
 void* ntohs (scalar_t__) ;
 int print_request (char*,TYPE_4__*) ;
 int print_response (char*,TYPE_3__*) ;
 int syslog (int ,char*,...) ;

void
process_request(CTL_MSG *mp, CTL_RESPONSE *rp)
{
 CTL_MSG *ptr;
 char *s;

 rp->vers = TALK_VERSION;
 rp->type = mp->type;
 rp->id_num = htonl(0);
 if (mp->vers != TALK_VERSION) {
  syslog(LOG_WARNING, "bad protocol version %d", mp->vers);
  rp->answer = BADVERSION;
  return;
 }
 mp->id_num = ntohl(mp->id_num);
 mp->addr.sa_family = ntohs(mp->addr.sa_family);
 if (mp->addr.sa_family != AF_INET) {
  syslog(LOG_WARNING, "bad address, family %d",
      mp->addr.sa_family);
  rp->answer = BADADDR;
  return;
 }
 mp->ctl_addr.sa_family = ntohs(mp->ctl_addr.sa_family);
 if (mp->ctl_addr.sa_family != AF_INET) {
  syslog(LOG_WARNING, "bad control address, family %d",
      mp->ctl_addr.sa_family);
  rp->answer = BADCTLADDR;
  return;
 }
 for (s = mp->l_name; *s; s++)
  if (!isprint(*s)) {
   syslog(LOG_NOTICE, "illegal user name. Aborting");
   rp->answer = FAILED;
   return;
  }
 mp->pid = ntohl(mp->pid);
 if (debug)
  print_request("process_request", mp);
 switch (mp->type) {

 case 131:
  do_announce(mp, rp);
  break;

 case 129:
  ptr = find_request(mp);
  if (ptr != (CTL_MSG *)0) {
   rp->id_num = htonl(ptr->id_num);
   rp->answer = SUCCESS;
  } else
   insert_table(mp, rp);
  break;

 case 128:
  ptr = find_match(mp);
  if (ptr != (CTL_MSG *)0) {
   rp->id_num = htonl(ptr->id_num);
   rp->addr = ptr->addr;
   rp->addr.sa_family = htons(ptr->addr.sa_family);
   rp->answer = SUCCESS;
  } else
   rp->answer = NOT_HERE;
  break;

 case 130:
  rp->answer = delete_invite(mp->id_num);
  break;

 default:
  rp->answer = UNKNOWN_REQUEST;
  break;
 }
 if (debug)
  print_response("process_request", rp);
}
