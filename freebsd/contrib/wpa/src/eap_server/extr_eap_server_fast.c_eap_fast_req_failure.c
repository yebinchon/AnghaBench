
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_fast_data {int dummy; } ;
typedef int EapType ;


 int EAP_TYPE_NONE ;
 int FAILURE ;
 int eap_fast_state (struct eap_fast_data*,int ) ;

__attribute__((used)) static EapType eap_fast_req_failure(struct eap_sm *sm,
        struct eap_fast_data *data)
{

 eap_fast_state(data, FAILURE);
 return EAP_TYPE_NONE;
}
