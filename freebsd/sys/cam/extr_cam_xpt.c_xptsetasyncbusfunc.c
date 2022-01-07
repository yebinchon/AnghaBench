
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccb_setasync {int callback_arg; int (* callback ) (int ,int ,struct cam_path*,struct ccb_pathinq*) ;} ;
struct ccb_pathinq {int dummy; } ;
struct cam_path {int dummy; } ;
struct cam_eb {int path_id; } ;


 int AC_PATH_REGISTERED ;
 int CAM_LUN_WILDCARD ;
 int CAM_TARGET_WILDCARD ;
 int stub1 (int ,int ,struct cam_path*,struct ccb_pathinq*) ;
 int xpt_compile_path (struct cam_path*,int *,int ,int ,int ) ;
 int xpt_path_inq (struct ccb_pathinq*,struct cam_path*) ;
 int xpt_path_lock (struct cam_path*) ;
 int xpt_path_unlock (struct cam_path*) ;
 int xpt_release_path (struct cam_path*) ;

__attribute__((used)) static int
xptsetasyncbusfunc(struct cam_eb *bus, void *arg)
{
 struct cam_path path;
 struct ccb_pathinq cpi;
 struct ccb_setasync *csa = (struct ccb_setasync *)arg;

 xpt_compile_path(&path, ((void*)0),
    bus->path_id,
    CAM_TARGET_WILDCARD,
    CAM_LUN_WILDCARD);
 xpt_path_lock(&path);
 xpt_path_inq(&cpi, &path);
 csa->callback(csa->callback_arg,
       AC_PATH_REGISTERED,
       &path, &cpi);
 xpt_path_unlock(&path);
 xpt_release_path(&path);

 return(1);
}
