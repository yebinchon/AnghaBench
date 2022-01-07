
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ib_user_mad_reg_req {int qpn; int mgmt_class; int mgmt_class_version; int id; int oui; int * method_mask; int rmpp_version; } ;
typedef int __be32 ;


 int DEBUG (char*,int,int,int,...) ;
 int EPERM ;
 int IB_OPENIB_OUI ;
 int IB_USER_MAD_REGISTER_AGENT ;
 int TRACE (char*,int,int,int,int ,long*) ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ib_user_mad_reg_req*,int) ;
 int htobe32 (int ) ;
 int ioctl (int,int ,void*) ;
 int memcpy (int *,...) ;
 int memset (int *,int ,int) ;

int umad_register(int fd, int mgmt_class, int mgmt_version,
    uint8_t rmpp_version, long method_mask[])
{
 struct ib_user_mad_reg_req req;
 __be32 oui = htobe32(IB_OPENIB_OUI);
 int qp;

 TRACE
     ("fd %d mgmt_class %u mgmt_version %u rmpp_version %d method_mask %p",
      fd, mgmt_class, mgmt_version, rmpp_version, method_mask);

 req.qpn = qp = (mgmt_class == 0x1 || mgmt_class == 0x81) ? 0 : 1;
 req.mgmt_class = mgmt_class;
 req.mgmt_class_version = mgmt_version;
 req.rmpp_version = rmpp_version;

 if (method_mask)
  memcpy(req.method_mask, method_mask, sizeof req.method_mask);
 else
  memset(req.method_mask, 0, sizeof req.method_mask);

 memcpy(&req.oui, (char *)&oui + 1, sizeof req.oui);

 VALGRIND_MAKE_MEM_DEFINED(&req, sizeof req);

 if (!ioctl(fd, IB_USER_MAD_REGISTER_AGENT, (void *)&req)) {
  DEBUG("fd %d registered to use agent %d qp %d", fd, req.id, qp);
  return req.id;
 }

 DEBUG("fd %d registering qp %d class 0x%x version %d failed: %m",
       fd, qp, mgmt_class, mgmt_version);
 return -EPERM;
}
