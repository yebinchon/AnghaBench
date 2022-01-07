
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_7__ {scalar_t__ valid; } ;
struct TYPE_6__ {scalar_t__ valid; } ;
struct TYPE_8__ {int func_code; } ;
struct ccb_trans_settings {TYPE_3__ xport_specific; TYPE_2__ proto_specific; int protocol_version; int protocol; int transport_version; int transport; int type; TYPE_4__ ccb_h; } ;
struct ccb_pathinq {int protocol_version; int protocol; int transport_version; int transport; } ;
struct cam_path {TYPE_1__* device; } ;
struct TYPE_5__ {int protocol_version; int protocol; int transport_version; int transport; } ;


 int CAM_PRIORITY_NONE ;
 int CTS_TYPE_CURRENT_SETTINGS ;
 int XPT_SET_TRAN_SETTINGS ;
 int xpt_action (union ccb*) ;
 int xpt_path_inq (struct ccb_pathinq*,struct cam_path*) ;
 int xpt_setup_ccb (TYPE_4__*,struct cam_path*,int ) ;

__attribute__((used)) static void
nvme_device_transport(struct cam_path *path)
{
 struct ccb_pathinq cpi;
 struct ccb_trans_settings cts;



 xpt_path_inq(&cpi, path);

 path->device->transport = cpi.transport;
 path->device->transport_version = cpi.transport_version;

 path->device->protocol = cpi.protocol;
 path->device->protocol_version = cpi.protocol_version;


 xpt_setup_ccb(&cts.ccb_h, path, CAM_PRIORITY_NONE);
 cts.ccb_h.func_code = XPT_SET_TRAN_SETTINGS;
 cts.type = CTS_TYPE_CURRENT_SETTINGS;
 cts.transport = path->device->transport;
 cts.transport_version = path->device->transport_version;
 cts.protocol = path->device->protocol;
 cts.protocol_version = path->device->protocol_version;
 cts.proto_specific.valid = 0;
 cts.xport_specific.valid = 0;
 xpt_action((union ccb *)&cts);
}
