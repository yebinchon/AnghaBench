
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autoscan_exponential_data {void* limit; void* base; } ;


 void* atoi (char const*) ;
 char* os_strchr (char const*,char) ;

__attribute__((used)) static int
autoscan_exponential_get_params(struct autoscan_exponential_data *data,
    const char *params)
{
 const char *pos;

 if (params == ((void*)0))
  return -1;

 data->base = atoi(params);

 pos = os_strchr(params, ':');
 if (pos == ((void*)0))
  return -1;

 pos++;
 data->limit = atoi(pos);

 return 0;
}
