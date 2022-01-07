
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_eke_data {int msgs; int peerid; int serverid; int sess; } ;


 int bin_clear_free (struct eap_eke_data*,int) ;
 int eap_eke_session_clean (int *) ;
 int os_free (int ) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void eap_eke_deinit(struct eap_sm *sm, void *priv)
{
 struct eap_eke_data *data = priv;
 eap_eke_session_clean(&data->sess);
 os_free(data->serverid);
 os_free(data->peerid);
 wpabuf_free(data->msgs);
 bin_clear_free(data, sizeof(*data));
}
