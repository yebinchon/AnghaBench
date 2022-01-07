
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ts_mad ;
struct ib_mad {int format_version; int attribute_id; int class_version; int slid; int transaction_id; int dlid; int dqpn; int sqpn; int port; int r_method; int mgmt_class; } ;
struct TYPE_7__ {int lid; } ;
struct ib_get_port_info_ioctl {TYPE_2__ port_info; int port; } ;
struct TYPE_8__ {int port_num; scalar_t__ p_transp_mgr; } ;
typedef TYPE_3__ osmv_bind_obj_t ;
struct TYPE_6__ {int qpn; int mgmt_class; } ;
struct TYPE_9__ {int device_fd; TYPE_1__ filter; } ;
typedef TYPE_4__ osmv_TOPSPIN_transport_mgr_t ;


 int TS_IB_IOCGPORTINFO ;
 int cl_ntoh16 (int) ;
 int ioctl (int ,int ,struct ib_get_port_info_ioctl*) ;
 int memset (struct ib_mad*,int ,int) ;
 int write (int ,struct ib_mad*,int) ;

void __osm_transport_gen_dummy_mad(osmv_bind_obj_t * p_bo)
{
 struct ib_mad ts_mad;
 osmv_TOPSPIN_transport_mgr_t *p_mgr =
     (osmv_TOPSPIN_transport_mgr_t *) (p_bo->p_transp_mgr);
 struct ib_get_port_info_ioctl port_data;
 int ts_ioctl_ret;


 memset(&ts_mad, 0, sizeof(ts_mad));
 ts_mad.format_version = 1;
 ts_mad.mgmt_class = p_mgr->filter.mgmt_class;
 ts_mad.attribute_id = 0x2;
 ts_mad.class_version = 1;
 ts_mad.r_method = cl_ntoh16(0x2);
 ts_mad.port = p_bo->port_num;
 ts_mad.sqpn = p_mgr->filter.qpn;
 ts_mad.dqpn = p_mgr->filter.qpn;
 ts_mad.slid = 0xffff;

 port_data.port = p_bo->port_num;
 ts_ioctl_ret = ioctl(p_mgr->device_fd, TS_IB_IOCGPORTINFO, &port_data);
 ts_mad.dlid = port_data.port_info.lid;
 ts_mad.transaction_id = 0x9999;
 write(p_mgr->device_fd, &ts_mad, sizeof(ts_mad));
}
