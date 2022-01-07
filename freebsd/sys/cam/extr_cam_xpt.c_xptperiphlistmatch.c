
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct periph_driver {int dummy; } ;
struct TYPE_4__ {int * pdrv; } ;
struct TYPE_3__ {int position_type; TYPE_2__ cookie; } ;
struct ccb_dev_match {int status; TYPE_1__ pos; scalar_t__ num_matches; } ;


 int CAM_DEV_MATCH_LAST ;
 int CAM_DEV_POS_PDPTR ;
 int xptpdrvtraverse (struct periph_driver**,int ,struct ccb_dev_match*) ;
 int xptplistpdrvfunc ;

__attribute__((used)) static int
xptperiphlistmatch(struct ccb_dev_match *cdm)
{
 int ret;

 cdm->num_matches = 0;
 if ((cdm->pos.position_type & CAM_DEV_POS_PDPTR)
  && (cdm->pos.cookie.pdrv != ((void*)0)))
  ret = xptpdrvtraverse(
    (struct periph_driver **)cdm->pos.cookie.pdrv,
    xptplistpdrvfunc, cdm);
 else
  ret = xptpdrvtraverse(((void*)0), xptplistpdrvfunc, cdm);
 if (ret == 1)
  cdm->status = CAM_DEV_MATCH_LAST;

 return(ret);
}
