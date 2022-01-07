
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sim {char* sim_name; int unit_number; int max_dev_openings; int max_tagged_dev_openings; } ;


 int printf (char*,char*,int,int,int ) ;

__attribute__((used)) static void
ctlfe_dump_sim(struct cam_sim *sim)
{

 printf("%s%d: max dev openings: %d, max tagged dev openings: %d\n",
     sim->sim_name, sim->unit_number, sim->max_dev_openings,
     sim->max_tagged_dev_openings);
}
