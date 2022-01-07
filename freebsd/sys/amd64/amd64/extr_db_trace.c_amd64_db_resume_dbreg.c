
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbreg {int dummy; } ;


 int PCPU_GET (int ) ;
 scalar_t__ PCPU_PTR (int ) ;
 int PCPU_SET (int ,int ) ;

 int PC_DBREG_CMD_NONE ;
 int dbreg ;
 int dbreg_cmd ;
 int set_dbregs (int *,struct dbreg*) ;

void
amd64_db_resume_dbreg(void)
{
 struct dbreg *d;

 switch (PCPU_GET(dbreg_cmd)) {
 case 128:
  d = (struct dbreg *)PCPU_PTR(dbreg);
  set_dbregs(((void*)0), d);
  PCPU_SET(dbreg_cmd, PC_DBREG_CMD_NONE);
  break;
 }
}
