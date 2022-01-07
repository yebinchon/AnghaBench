
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devsw {scalar_t__ dv_type; } ;
typedef int pdinfo_list_t ;


 scalar_t__ DEVT_CD ;
 scalar_t__ DEVT_DISK ;
 scalar_t__ DEVT_FD ;
 int cdinfo ;
 int fdinfo ;
 int hdinfo ;

pdinfo_list_t *
efiblk_get_pdinfo_list(struct devsw *dev)
{
 if (dev->dv_type == DEVT_DISK)
  return (&hdinfo);
 if (dev->dv_type == DEVT_CD)
  return (&cdinfo);
 if (dev->dv_type == DEVT_FD)
  return (&fdinfo);
 return (((void*)0));
}
