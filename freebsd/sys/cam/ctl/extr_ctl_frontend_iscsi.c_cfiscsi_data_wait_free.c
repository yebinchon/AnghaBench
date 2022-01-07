
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfiscsi_session {int cs_conn; } ;
struct cfiscsi_data_wait {int cdw_icl_prv; } ;


 int cfiscsi_data_wait_zone ;
 int icl_conn_transfer_done (int ,int ) ;
 int uma_zfree (int ,struct cfiscsi_data_wait*) ;

__attribute__((used)) static void
cfiscsi_data_wait_free(struct cfiscsi_session *cs,
    struct cfiscsi_data_wait *cdw)
{

 icl_conn_transfer_done(cs->cs_conn, cdw->cdw_icl_prv);
 uma_zfree(cfiscsi_data_wait_zone, cdw);
}
