
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_ikev2_data {scalar_t__ state; scalar_t__ keymat_ok; } ;
typedef int Boolean ;


 scalar_t__ DONE ;

__attribute__((used)) static Boolean eap_ikev2_isKeyAvailable(struct eap_sm *sm, void *priv)
{
 struct eap_ikev2_data *data = priv;
 return data->state == DONE && data->keymat_ok;
}
