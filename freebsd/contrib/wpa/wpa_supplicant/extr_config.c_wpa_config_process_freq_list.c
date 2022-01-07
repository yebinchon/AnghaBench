
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config {int* freq_list; } ;
struct global_parse_data {int dummy; } ;


 int os_free (int*) ;
 int* wpa_config_parse_int_array (char const*) ;

__attribute__((used)) static int wpa_config_process_freq_list(const struct global_parse_data *data,
     struct wpa_config *config, int line,
     const char *value)
{
 int *freqs;

 freqs = wpa_config_parse_int_array(value);
 if (freqs == ((void*)0))
  return -1;
 if (freqs[0] == 0) {
  os_free(freqs);
  freqs = ((void*)0);
 }
 os_free(config->freq_list);
 config->freq_list = freqs;
 return 0;
}
