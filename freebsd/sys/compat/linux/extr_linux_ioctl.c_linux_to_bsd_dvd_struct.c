
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dvd_struct {int format; int layer_num; int agid; } ;
struct TYPE_6__ {int agid; } ;
struct TYPE_8__ {int layer_num; } ;
struct TYPE_7__ {int layer_num; } ;
struct TYPE_9__ {int type; TYPE_1__ disckey; TYPE_3__ copyright; TYPE_2__ physical; } ;
typedef TYPE_4__ l_dvd_struct ;







 int EINVAL ;

__attribute__((used)) static int
linux_to_bsd_dvd_struct(l_dvd_struct *lp, struct dvd_struct *bp)
{
 bp->format = lp->type;
 switch (bp->format) {
 case 128:
  if (bp->layer_num >= 4)
   return (EINVAL);
  bp->layer_num = lp->physical.layer_num;
  break;
 case 131:
  bp->layer_num = lp->copyright.layer_num;
  break;
 case 130:
  bp->agid = lp->disckey.agid;
  break;
 case 132:
 case 129:
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
