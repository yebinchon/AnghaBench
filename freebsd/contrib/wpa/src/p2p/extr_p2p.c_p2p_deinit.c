
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct p2p_data* range; } ;
struct p2p_data {TYPE_2__ no_go_freq; int sd_resp; struct p2p_data* groups; TYPE_1__* cfg; int wfd_r2_dev_info; int wfd_coupled_sink_info; int wfd_assoc_bssid; int wfd_dev_info; int wfd_ie_go_neg; int wfd_ie_prov_disc_resp; int wfd_ie_prov_disc_req; int wfd_ie_invitation; int wfd_ie_assoc_req; int wfd_ie_probe_resp; int wfd_ie_probe_req; int wfd_ie_beacon; } ;
struct TYPE_3__ {struct p2p_data* pref_chan; struct p2p_data* serial_number; struct p2p_data* model_number; struct p2p_data* model_name; struct p2p_data* manufacturer; struct p2p_data* dev_name; } ;


 int eloop_cancel_timeout (int ,struct p2p_data*,int *) ;
 int os_free (struct p2p_data*) ;
 int p2p_flush (struct p2p_data*) ;
 int p2p_free_req_dev_types (struct p2p_data*) ;
 int p2p_go_neg_start ;
 int p2p_go_neg_wait_timeout ;
 int p2p_remove_wps_vendor_extensions (struct p2p_data*) ;
 int p2p_scan_timeout ;
 int p2p_service_flush_asp (struct p2p_data*) ;
 int p2ps_prov_free (struct p2p_data*) ;
 int wpabuf_free (int ) ;

void p2p_deinit(struct p2p_data *p2p)
{
 eloop_cancel_timeout(p2p_scan_timeout, p2p, ((void*)0));
 eloop_cancel_timeout(p2p_go_neg_start, p2p, ((void*)0));
 eloop_cancel_timeout(p2p_go_neg_wait_timeout, p2p, ((void*)0));
 p2p_flush(p2p);
 p2p_free_req_dev_types(p2p);
 os_free(p2p->cfg->dev_name);
 os_free(p2p->cfg->manufacturer);
 os_free(p2p->cfg->model_name);
 os_free(p2p->cfg->model_number);
 os_free(p2p->cfg->serial_number);
 os_free(p2p->cfg->pref_chan);
 os_free(p2p->groups);
 p2ps_prov_free(p2p);
 wpabuf_free(p2p->sd_resp);
 p2p_remove_wps_vendor_extensions(p2p);
 os_free(p2p->no_go_freq.range);
 p2p_service_flush_asp(p2p);

 os_free(p2p);
}
