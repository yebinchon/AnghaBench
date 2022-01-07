
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext_password_test_data {int params; } ;


 int os_free (struct ext_password_test_data*) ;
 int str_clear_free (int ) ;

__attribute__((used)) static void ext_password_test_deinit(void *ctx)
{
 struct ext_password_test_data *data = ctx;

 str_clear_free(data->params);
 os_free(data);
}
