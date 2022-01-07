
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_sim_data {scalar_t__ reauth_id; scalar_t__ pseudonym; } ;
typedef int Boolean ;



__attribute__((used)) static Boolean eap_sim_has_reauth_data(struct eap_sm *sm, void *priv)
{
 struct eap_sim_data *data = priv;
 return data->pseudonym || data->reauth_id;
}
