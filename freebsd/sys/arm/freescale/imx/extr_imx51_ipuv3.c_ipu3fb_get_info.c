
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_info_t ;
struct TYPE_3__ {int va_info; } ;
typedef TYPE_1__ video_adapter_t ;


 int bcopy (int *,int *,int) ;

__attribute__((used)) static int
ipu3fb_get_info(video_adapter_t *adp, int mode, video_info_t *info)
{

 bcopy(&adp->va_info, info, sizeof(*info));
 return (0);
}
