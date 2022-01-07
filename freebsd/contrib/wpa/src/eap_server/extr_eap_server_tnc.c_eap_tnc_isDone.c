
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_tnc_data {scalar_t__ state; } ;
struct eap_sm {int dummy; } ;
typedef int Boolean ;


 scalar_t__ DONE ;
 scalar_t__ FAIL ;

__attribute__((used)) static Boolean eap_tnc_isDone(struct eap_sm *sm, void *priv)
{
 struct eap_tnc_data *data = priv;
 return data->state == DONE || data->state == FAIL;
}
