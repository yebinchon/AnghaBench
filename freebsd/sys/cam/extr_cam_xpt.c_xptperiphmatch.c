
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct periph_match_pattern {int flags; scalar_t__ path_id; scalar_t__ target_id; scalar_t__ target_lun; scalar_t__ unit_number; int periph_name; } ;
struct TYPE_6__ {struct periph_match_pattern periph_pattern; } ;
struct dev_match_pattern {scalar_t__ type; TYPE_1__ pattern; } ;
struct cam_periph {scalar_t__ unit_number; int periph_name; TYPE_5__* path; } ;
typedef int dev_match_ret ;
struct TYPE_10__ {TYPE_4__* device; TYPE_3__* target; TYPE_2__* bus; } ;
struct TYPE_9__ {scalar_t__ lun_id; } ;
struct TYPE_8__ {scalar_t__ target_id; } ;
struct TYPE_7__ {scalar_t__ path_id; } ;


 int DEV_IDLEN ;
 scalar_t__ DEV_MATCH_PERIPH ;
 int DM_RET_COPY ;
 int DM_RET_ERROR ;
 int DM_RET_STOP ;
 int PERIPH_MATCH_ANY ;
 int PERIPH_MATCH_LUN ;
 int PERIPH_MATCH_NAME ;
 int PERIPH_MATCH_NONE ;
 int PERIPH_MATCH_PATH ;
 int PERIPH_MATCH_TARGET ;
 int PERIPH_MATCH_UNIT ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static dev_match_ret
xptperiphmatch(struct dev_match_pattern *patterns, u_int num_patterns,
        struct cam_periph *periph)
{
 dev_match_ret retval;
 u_int i;




 if (periph == ((void*)0))
  return(DM_RET_ERROR);





 if ((patterns == ((void*)0)) || (num_patterns == 0))
  return(DM_RET_STOP | DM_RET_COPY);





 retval = DM_RET_STOP;

 for (i = 0; i < num_patterns; i++) {
  struct periph_match_pattern *cur_pattern;





  if (patterns[i].type != DEV_MATCH_PERIPH)
   continue;

  cur_pattern = &patterns[i].pattern.periph_pattern;




  if (cur_pattern->flags == PERIPH_MATCH_ANY) {

   retval |= DM_RET_COPY;






   return(retval);
  }




  if (cur_pattern->flags == PERIPH_MATCH_NONE)
   continue;

  if (((cur_pattern->flags & PERIPH_MATCH_PATH) != 0)
   && (cur_pattern->path_id != periph->path->bus->path_id))
   continue;






  if (((cur_pattern->flags & PERIPH_MATCH_TARGET) != 0)
   && ((periph->path->target == ((void*)0))
   ||(cur_pattern->target_id != periph->path->target->target_id)))
   continue;

  if (((cur_pattern->flags & PERIPH_MATCH_LUN) != 0)
   && ((periph->path->device == ((void*)0))
   || (cur_pattern->target_lun != periph->path->device->lun_id)))
   continue;

  if (((cur_pattern->flags & PERIPH_MATCH_UNIT) != 0)
   && (cur_pattern->unit_number != periph->unit_number))
   continue;

  if (((cur_pattern->flags & PERIPH_MATCH_NAME) != 0)
   && (strncmp(cur_pattern->periph_name, periph->periph_name,
        DEV_IDLEN) != 0))
   continue;






  retval |= DM_RET_COPY;





  return(retval);
 }





 return(retval);
}
