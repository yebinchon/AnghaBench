
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ctl_io {int dummy; } ctl_io ;
typedef void* uint32_t ;
struct cfiscsi_session {int cs_conn; } ;
struct cfiscsi_data_wait {void* cdw_initiator_task_tag; void* cdw_target_transfer_tag; union ctl_io* cdw_ctl_io; int cdw_icl_prv; } ;


 int CFISCSI_SESSION_WARN (struct cfiscsi_session*,char*,int) ;
 int M_NOWAIT ;
 int M_ZERO ;
 int cfiscsi_data_wait_zone ;
 int icl_conn_transfer_setup (int ,union ctl_io*,void**,int *) ;
 struct cfiscsi_data_wait* uma_zalloc (int ,int) ;
 int uma_zfree (int ,struct cfiscsi_data_wait*) ;

__attribute__((used)) static struct cfiscsi_data_wait *
cfiscsi_data_wait_new(struct cfiscsi_session *cs, union ctl_io *io,
    uint32_t initiator_task_tag, uint32_t *target_transfer_tagp)
{
 struct cfiscsi_data_wait *cdw;
 int error;

 cdw = uma_zalloc(cfiscsi_data_wait_zone, M_NOWAIT | M_ZERO);
 if (cdw == ((void*)0)) {
  CFISCSI_SESSION_WARN(cs,
      "failed to allocate %zd bytes", sizeof(*cdw));
  return (((void*)0));
 }

 error = icl_conn_transfer_setup(cs->cs_conn, io, target_transfer_tagp,
     &cdw->cdw_icl_prv);
 if (error != 0) {
  CFISCSI_SESSION_WARN(cs,
      "icl_conn_transfer_setup() failed with error %d", error);
  uma_zfree(cfiscsi_data_wait_zone, cdw);
  return (((void*)0));
 }

 cdw->cdw_ctl_io = io;
 cdw->cdw_target_transfer_tag = *target_transfer_tagp;
 cdw->cdw_initiator_task_tag = initiator_task_tag;

 return (cdw);
}
