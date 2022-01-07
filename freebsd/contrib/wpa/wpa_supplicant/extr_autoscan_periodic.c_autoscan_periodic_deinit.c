
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autoscan_periodic_data {int dummy; } ;


 int os_free (struct autoscan_periodic_data*) ;

__attribute__((used)) static void autoscan_periodic_deinit(void *priv)
{
 struct autoscan_periodic_data *data = priv;

 os_free(data);
}
