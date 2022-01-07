
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int memlimitstr ;
typedef enum message_verbosity { ____Placeholder_message_verbosity } message_verbosity ;


 int UINT32_C (int) ;
 int UINT64_MAX ;
 int _ (char*) ;
 int hardware_memlimit_get (int ) ;
 int message (int,int ,char*,...) ;
 int opt_mode ;
 int round_up_to_mib (int) ;
 int snprintf (char*,int,char*,char*) ;
 char* uint64_to_str (int,int) ;
 int verbosity ;

extern void
message_mem_needed(enum message_verbosity v, uint64_t memusage)
{
 if (v > verbosity)
  return;





 memusage = round_up_to_mib(memusage);

 uint64_t memlimit = hardware_memlimit_get(opt_mode);



 if (memlimit == UINT64_MAX) {
  message(v, _("%s MiB of memory is required. "
    "The limiter is disabled."),
    uint64_to_str(memusage, 0));
  return;
 }




 char memlimitstr[128];




 if (memlimit < (UINT32_C(1) << 20)) {
  snprintf(memlimitstr, sizeof(memlimitstr), "%s B",
    uint64_to_str(memlimit, 1));
 } else {






  snprintf(memlimitstr, sizeof(memlimitstr), "%s MiB",
    uint64_to_str(round_up_to_mib(memlimit), 1));
 }

 message(v, _("%s MiB of memory is required. The limit is %s."),
   uint64_to_str(memusage, 0), memlimitstr);

 return;
}
