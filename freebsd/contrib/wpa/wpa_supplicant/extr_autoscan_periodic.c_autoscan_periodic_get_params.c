
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autoscan_periodic_data {int periodic_interval; } ;


 int atoi (char const*) ;

__attribute__((used)) static int autoscan_periodic_get_params(struct autoscan_periodic_data *data,
     const char *params)
{
 int interval;

 if (params == ((void*)0))
  return -1;

 interval = atoi(params);

 if (interval < 0)
  return -1;

 data->periodic_interval = interval;

 return 0;
}
