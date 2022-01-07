
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ IB_CA_CONG_ENTRY_DATA_SIZE ;
 int free (char*) ;
 int log_report (char*) ;
 int null_str ;
 scalar_t__ strcmp (int ,char*) ;
 char* strdup (char*) ;
 char* strtok_r (char*,char*,char**) ;
 scalar_t__ strtoul (char*,int *,int ) ;

__attribute__((used)) static int parse_ca_cong_common(char *p_val_str, uint8_t *sl, unsigned int *val_offset) {
 char *new, *lasts, *sl_str, *val_str;
 uint8_t sltmp;

 new = strcmp(null_str, p_val_str) ? strdup(p_val_str) : ((void*)0);
 if (!new)
  return -1;

 sl_str = strtok_r(new, " \t", &lasts);
 val_str = strtok_r(((void*)0), " \t", &lasts);

 if (!val_str) {
  log_report("value must be specified in addition to SL\n");
  free(new);
  return -1;
 }

 sltmp = strtoul(sl_str, ((void*)0), 0);
 if (sltmp >= IB_CA_CONG_ENTRY_DATA_SIZE) {
  log_report("invalid SL specified\n");
  free(new);
  return -1;
 }

 *sl = sltmp;
 *val_offset = (unsigned int)(val_str - new);

 free(new);
 return 0;
}
