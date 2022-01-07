
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pmc_op_writelog {int pm_userdata; } ;


 int PMC_CALL (int ,struct pmc_op_writelog*) ;
 int WRITELOG ;

int
pmc_writelog(uint32_t userdata)
{
 struct pmc_op_writelog wl;

 wl.pm_userdata = userdata;
 return (PMC_CALL(WRITELOG, &wl));
}
