
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* key_data_contents; int * key_data_length; } ;
typedef TYPE_1__ krb5_key_data ;
typedef int int16_t ;


 int free (scalar_t__) ;
 int memset (scalar_t__,int ,int ) ;

void
kadm5_free_key_data(void *server_handle,
      int16_t *n_key_data,
      krb5_key_data *key_data)
{
    int i;
    for(i = 0; i < *n_key_data; i++){
 if(key_data[i].key_data_contents[0]){
     memset(key_data[i].key_data_contents[0],
     0,
     key_data[i].key_data_length[0]);
     free(key_data[i].key_data_contents[0]);
 }
 if(key_data[i].key_data_contents[1])
     free(key_data[i].key_data_contents[1]);
    }
    *n_key_data = 0;
}
