
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct pt_time_cal {int dummy; } ;
struct pt_time {int dummy; } ;
struct pt_packet_cyc {int dummy; } ;
struct pt_config {int dummy; } ;


 int pt_tcal_fcr (unsigned long long*,struct pt_time_cal*) ;
 int pt_tcal_update_cyc (struct pt_time_cal*,struct pt_packet_cyc const*,struct pt_config const*) ;
 int pt_time_update_cyc (struct pt_time*,struct pt_packet_cyc const*,struct pt_config const*,unsigned long long) ;
 int pte_bad_config ;
 int pte_no_time ;

__attribute__((used)) static int pt_qry_apply_cyc(struct pt_time *time, struct pt_time_cal *tcal,
       const struct pt_packet_cyc *packet,
       const struct pt_config *config)
{
 uint64_t fcr;
 int errcode;






 errcode = pt_tcal_update_cyc(tcal, packet, config);
 if (errcode < 0 && (errcode != -pte_bad_config))
  return errcode;






 errcode = pt_tcal_fcr(&fcr, tcal);
 if (errcode < 0) {
  if (errcode == -pte_no_time)
   fcr = 0ull;
  else
   return errcode;
 }




 errcode = pt_time_update_cyc(time, packet, config, fcr);
 if (errcode < 0 && (errcode != -pte_bad_config))
  return errcode;

 return 0;
}
