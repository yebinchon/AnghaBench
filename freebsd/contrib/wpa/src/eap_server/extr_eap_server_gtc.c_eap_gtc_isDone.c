
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_gtc_data {scalar_t__ state; } ;
typedef int Boolean ;


 scalar_t__ CONTINUE ;

__attribute__((used)) static Boolean eap_gtc_isDone(struct eap_sm *sm, void *priv)
{
 struct eap_gtc_data *data = priv;
 return data->state != CONTINUE;
}
