
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct eap_ikev2_data {scalar_t__ state; scalar_t__ keymat_ok; TYPE_1__ ikev2; } ;
typedef int Boolean ;


 scalar_t__ DONE ;
 scalar_t__ IKEV2_DONE ;

__attribute__((used)) static Boolean eap_ikev2_isSuccess(struct eap_sm *sm, void *priv)
{
 struct eap_ikev2_data *data = priv;
 return data->state == DONE && data->ikev2.state == IKEV2_DONE &&
  data->keymat_ok;
}
