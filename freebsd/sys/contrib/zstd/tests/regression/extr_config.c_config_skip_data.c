
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int data_t ;
struct TYPE_3__ {scalar_t__ use_dictionary; } ;
typedef TYPE_1__ config_t ;


 int data_has_dict (int const*) ;

int config_skip_data(config_t const* config, data_t const* data) {
    return config->use_dictionary && !data_has_dict(data);
}
