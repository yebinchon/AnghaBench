
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgscan_learn_data {int fname; void* long_interval; void* signal_threshold; void* short_interval; } ;


 int MSG_ERROR ;
 void* atoi (char const*) ;
 char* os_strchr (char const*,char) ;
 int os_strdup (char const*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int bgscan_learn_get_params(struct bgscan_learn_data *data,
       const char *params)
{
 const char *pos;

 data->short_interval = atoi(params);

 pos = os_strchr(params, ':');
 if (pos == ((void*)0))
  return 0;
 pos++;
 data->signal_threshold = atoi(pos);
 pos = os_strchr(pos, ':');
 if (pos == ((void*)0)) {
  wpa_printf(MSG_ERROR, "bgscan learn: Missing scan interval "
      "for high signal");
  return -1;
 }
 pos++;
 data->long_interval = atoi(pos);
 pos = os_strchr(pos, ':');
 if (pos) {
  pos++;
  data->fname = os_strdup(pos);
 }

 return 0;
}
