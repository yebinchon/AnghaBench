
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_aka_data {scalar_t__ state; } ;
typedef int Boolean ;


 scalar_t__ SUCCESS ;

__attribute__((used)) static Boolean eap_aka_isKeyAvailable(struct eap_sm *sm, void *priv)
{
 struct eap_aka_data *data = priv;
 return data->state == SUCCESS;
}
