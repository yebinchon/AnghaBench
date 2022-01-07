
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller_data {int npss; int * power_state; } ;


 int power_list_one (int,int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void
power_list(struct nvme_controller_data *cdata)
{
 int i;

 printf("\nPower States Supported: %d\n\n", cdata->npss + 1);
 printf(" #   Max pwr  Enter Lat  Exit Lat RT RL WT WL Idle Pwr  Act Pwr Workloadd\n");
 printf("--  --------  --------- --------- -- -- -- -- -------- -------- --\n");
 for (i = 0; i <= cdata->npss; i++)
  power_list_one(i, &cdata->power_state[i]);
}
