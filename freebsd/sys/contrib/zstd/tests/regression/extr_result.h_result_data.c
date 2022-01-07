
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int internal_data; int internal_error; } ;
typedef TYPE_1__ result_t ;
typedef int result_data_t ;


 int result_error_ok ;

__attribute__((used)) static result_t result_data(result_data_t data) {
    result_t result = {
        .internal_error = result_error_ok,
        .internal_data = data,
    };
    return result;
}
