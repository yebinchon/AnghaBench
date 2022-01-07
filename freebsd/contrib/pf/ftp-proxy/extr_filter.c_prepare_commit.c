
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_5__ {int size; int esize; int rs_num; int anchor; struct TYPE_5__* array; } ;


 int DIOCXBEGIN ;
 int EINVAL ;
 char* FTP_PROXY_ANCHOR ;
 int PF_ANCHOR_NAME_SIZE ;
 int PF_RULESET_FILTER ;
 int PF_RULESET_NAT ;
 int PF_RULESET_RDR ;



 int TRANS_SIZE ;
 int dev ;
 int errno ;
 int getpid () ;
 int ioctl (int ,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__ pft ;
 TYPE_1__* pfte ;
 int snprintf (char*,int,char*,char*,int,int) ;
 int strlcpy (int ,char*,int) ;

int
prepare_commit(u_int32_t id)
{
 char an[PF_ANCHOR_NAME_SIZE];
 int i;

 memset(&pft, 0, sizeof pft);
 pft.size = TRANS_SIZE;
 pft.esize = sizeof pfte[0];
 pft.array = pfte;

 snprintf(an, PF_ANCHOR_NAME_SIZE, "%s/%d.%d", FTP_PROXY_ANCHOR,
     getpid(), id);
 for (i = 0; i < TRANS_SIZE; i++) {
  memset(&pfte[i], 0, sizeof pfte[0]);
  strlcpy(pfte[i].anchor, an, PF_ANCHOR_NAME_SIZE);
  switch (i) {
  case 130:
   pfte[i].rs_num = PF_RULESET_FILTER;
   break;
  case 129:
   pfte[i].rs_num = PF_RULESET_NAT;
   break;
  case 128:
   pfte[i].rs_num = PF_RULESET_RDR;
   break;
  default:
   errno = EINVAL;
   return (-1);
  }
 }

 if (ioctl(dev, DIOCXBEGIN, &pft) == -1)
  return (-1);

 return (0);
}
