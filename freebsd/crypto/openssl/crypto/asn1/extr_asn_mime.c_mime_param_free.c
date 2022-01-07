
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* param_value; struct TYPE_4__* param_name; } ;
typedef TYPE_1__ MIME_PARAM ;


 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void mime_param_free(MIME_PARAM *param)
{
    OPENSSL_free(param->param_name);
    OPENSSL_free(param->param_value);
    OPENSSL_free(param);
}
