
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgscan_learn_data {int* supp_freqs; int probe_idx; } ;


 int MSG_DEBUG ;
 int in_array (int*,int) ;
 int* os_realloc_array (int*,size_t,int) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int * bgscan_learn_get_probe_freq(struct bgscan_learn_data *data,
      int *freqs, size_t count)
{
 int idx, *n;

 if (data->supp_freqs == ((void*)0))
  return freqs;

 idx = data->probe_idx;
 do {
  if (!in_array(freqs, data->supp_freqs[idx])) {
   wpa_printf(MSG_DEBUG, "bgscan learn: Probe new freq "
       "%u", data->supp_freqs[idx]);
   data->probe_idx = idx + 1;
   if (data->supp_freqs[data->probe_idx] == 0)
    data->probe_idx = 0;
   n = os_realloc_array(freqs, count + 2, sizeof(int));
   if (n == ((void*)0))
    return freqs;
   freqs = n;
   freqs[count] = data->supp_freqs[idx];
   count++;
   freqs[count] = 0;
   break;
  }

  idx++;
  if (data->supp_freqs[idx] == 0)
   idx = 0;
 } while (idx != data->probe_idx);

 return freqs;
}
