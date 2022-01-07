
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {scalar_t__ range_req_active; scalar_t__ lci_req_active; } ;


 int eloop_cancel_timeout (int ,struct hostapd_data*,int *) ;
 int hostapd_free_neighbor_db (struct hostapd_data*) ;
 int hostapd_lci_rep_timeout_handler ;
 int hostapd_range_rep_timeout_handler ;

void hostapd_clean_rrm(struct hostapd_data *hapd)
{
 hostapd_free_neighbor_db(hapd);
 eloop_cancel_timeout(hostapd_lci_rep_timeout_handler, hapd, ((void*)0));
 hapd->lci_req_active = 0;
 eloop_cancel_timeout(hostapd_range_rep_timeout_handler, hapd, ((void*)0));
 hapd->range_req_active = 0;
}
