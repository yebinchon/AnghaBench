
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_aka_data {int error_code; } ;


 int NO_EAP_METHOD_ERROR ;

__attribute__((used)) static int eap_aka_get_error_code(void *priv)
{
 struct eap_aka_data *data = priv;
 int current_data_error;

 if (!data)
  return NO_EAP_METHOD_ERROR;

 current_data_error = data->error_code;


 data->error_code = NO_EAP_METHOD_ERROR;

 return current_data_error;
}
