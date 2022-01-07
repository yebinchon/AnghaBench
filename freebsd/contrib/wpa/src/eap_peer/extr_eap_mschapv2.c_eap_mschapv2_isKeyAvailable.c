
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_mschapv2_data {scalar_t__ master_key_valid; scalar_t__ success; } ;
typedef int Boolean ;



__attribute__((used)) static Boolean eap_mschapv2_isKeyAvailable(struct eap_sm *sm, void *priv)
{
 struct eap_mschapv2_data *data = priv;
 return data->success && data->master_key_valid;
}
