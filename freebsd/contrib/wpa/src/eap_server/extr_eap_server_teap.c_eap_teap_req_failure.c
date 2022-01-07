
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_teap_data {int dummy; } ;
typedef enum teap_error_codes { ____Placeholder_teap_error_codes } teap_error_codes ;
typedef int EapType ;


 int EAP_TYPE_NONE ;
 int FAILURE_SEND_RESULT ;
 int eap_teap_state (struct eap_teap_data*,int ) ;

__attribute__((used)) static EapType eap_teap_req_failure(struct eap_teap_data *data,
        enum teap_error_codes error)
{
 eap_teap_state(data, FAILURE_SEND_RESULT);
 return EAP_TYPE_NONE;
}
