
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct l_dvd_layer {int end_sector_l0; int end_sector; int start_sector; int bca; int linear_density; int track_density; int nlayers; int track_path; int layer_type; int disc_size; int min_rate; int book_type; int book_version; } ;
struct dvd_struct {int format; size_t layer_num; scalar_t__ data; int length; int rmi; int cpst; } ;
struct dvd_layer {int end_sector_l0; int end_sector; int start_sector; int bca; int linear_density; int track_density; int nlayers; int track_path; int layer_type; int disc_size; int max_rate; int book_type; int book_version; } ;
struct TYPE_12__ {int value; int len; } ;
struct TYPE_11__ {int value; int len; } ;
struct TYPE_10__ {int value; } ;
struct TYPE_9__ {int rmi; int cpst; } ;
struct TYPE_8__ {struct l_dvd_layer* layer; } ;
struct TYPE_13__ {TYPE_5__ manufact; TYPE_4__ bca; TYPE_3__ disckey; TYPE_2__ copyright; TYPE_1__ physical; } ;
typedef TYPE_6__ l_dvd_struct ;







 int EINVAL ;
 int memcpy (int ,scalar_t__,int) ;
 int memset (struct l_dvd_layer*,int ,int) ;

__attribute__((used)) static int
bsd_to_linux_dvd_struct(struct dvd_struct *bp, l_dvd_struct *lp)
{
 switch (bp->format) {
 case 128: {
  struct dvd_layer *blp = (struct dvd_layer *)bp->data;
  struct l_dvd_layer *llp = &lp->physical.layer[bp->layer_num];
  memset(llp, 0, sizeof(*llp));
  llp->book_version = blp->book_version;
  llp->book_type = blp->book_type;
  llp->min_rate = blp->max_rate;
  llp->disc_size = blp->disc_size;
  llp->layer_type = blp->layer_type;
  llp->track_path = blp->track_path;
  llp->nlayers = blp->nlayers;
  llp->track_density = blp->track_density;
  llp->linear_density = blp->linear_density;
  llp->bca = blp->bca;
  llp->start_sector = blp->start_sector;
  llp->end_sector = blp->end_sector;
  llp->end_sector_l0 = blp->end_sector_l0;
  break;
 }
 case 131:
  lp->copyright.cpst = bp->cpst;
  lp->copyright.rmi = bp->rmi;
  break;
 case 130:
  memcpy(lp->disckey.value, bp->data, sizeof(lp->disckey.value));
  break;
 case 132:
  lp->bca.len = bp->length;
  memcpy(lp->bca.value, bp->data, sizeof(lp->bca.value));
  break;
 case 129:
  lp->manufact.len = bp->length;
  memcpy(lp->manufact.value, bp->data,
      sizeof(lp->manufact.value));

  break;
 default:
  return (EINVAL);
 }
 return (0);
}
