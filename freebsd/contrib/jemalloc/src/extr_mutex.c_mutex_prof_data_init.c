
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * prev_owner; int tot_wait_time; int max_wait_time; } ;
typedef TYPE_1__ mutex_prof_data_t ;


 int memset (TYPE_1__*,int ,int) ;
 int nstime_init (int *,int ) ;

__attribute__((used)) static void
mutex_prof_data_init(mutex_prof_data_t *data) {
 memset(data, 0, sizeof(mutex_prof_data_t));
 nstime_init(&data->max_wait_time, 0);
 nstime_init(&data->tot_wait_time, 0);
 data->prev_owner = ((void*)0);
}
