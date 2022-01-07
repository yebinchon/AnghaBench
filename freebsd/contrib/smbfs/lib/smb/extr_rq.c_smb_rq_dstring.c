
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbdata {int dummy; } ;


 int smb_rq_dmem (struct mbdata*,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

int
smb_rq_dstring(struct mbdata *mbp, char *s)
{
 return smb_rq_dmem(mbp, s, strlen(s) + 1);
}
