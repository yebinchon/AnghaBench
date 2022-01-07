
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct bus_match_pattern {int flags; scalar_t__ path_id; scalar_t__ bus_id; scalar_t__ unit_number; int dev_name; } ;
struct TYPE_3__ {struct bus_match_pattern bus_pattern; } ;
struct dev_match_pattern {scalar_t__ type; TYPE_1__ pattern; } ;
struct cam_eb {scalar_t__ path_id; TYPE_2__* sim; } ;
typedef int dev_match_ret ;
struct TYPE_4__ {scalar_t__ bus_id; scalar_t__ unit_number; int sim_name; } ;


 int BUS_MATCH_ANY ;
 int BUS_MATCH_BUS_ID ;
 int BUS_MATCH_NAME ;
 int BUS_MATCH_NONE ;
 int BUS_MATCH_PATH ;
 int BUS_MATCH_UNIT ;
 int DEV_IDLEN ;
 scalar_t__ DEV_MATCH_BUS ;
 int DM_RET_ACTION_MASK ;
 int DM_RET_COPY ;
 int DM_RET_DESCEND ;
 int DM_RET_ERROR ;
 int DM_RET_NONE ;
 int DM_RET_STOP ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static dev_match_ret
xptbusmatch(struct dev_match_pattern *patterns, u_int num_patterns,
     struct cam_eb *bus)
{
 dev_match_ret retval;
 u_int i;

 retval = DM_RET_NONE;




 if (bus == ((void*)0))
  return(DM_RET_ERROR);





 if ((patterns == ((void*)0)) || (num_patterns == 0))
  return(DM_RET_DESCEND | DM_RET_COPY);

 for (i = 0; i < num_patterns; i++) {
  struct bus_match_pattern *cur_pattern;
  if (patterns[i].type != DEV_MATCH_BUS) {
   if ((retval & DM_RET_ACTION_MASK) == DM_RET_NONE)
    retval |= DM_RET_DESCEND;
   continue;
  }

  cur_pattern = &patterns[i].pattern.bus_pattern;





  if (cur_pattern->flags == BUS_MATCH_ANY) {

   retval |= DM_RET_COPY;





   if ((retval & DM_RET_ACTION_MASK) != DM_RET_NONE)
    return(retval);
  }




  if (cur_pattern->flags == BUS_MATCH_NONE)
   continue;

  if (((cur_pattern->flags & BUS_MATCH_PATH) != 0)
   && (cur_pattern->path_id != bus->path_id))
   continue;

  if (((cur_pattern->flags & BUS_MATCH_BUS_ID) != 0)
   && (cur_pattern->bus_id != bus->sim->bus_id))
   continue;

  if (((cur_pattern->flags & BUS_MATCH_UNIT) != 0)
   && (cur_pattern->unit_number != bus->sim->unit_number))
   continue;

  if (((cur_pattern->flags & BUS_MATCH_NAME) != 0)
   && (strncmp(cur_pattern->dev_name, bus->sim->sim_name,
        DEV_IDLEN) != 0))
   continue;






  retval |= DM_RET_COPY;
  if ((retval & DM_RET_ACTION_MASK) == DM_RET_DESCEND)
   return(retval);
 }







 if ((retval & DM_RET_ACTION_MASK) == DM_RET_NONE)
  retval |= DM_RET_STOP;

 return(retval);
}
