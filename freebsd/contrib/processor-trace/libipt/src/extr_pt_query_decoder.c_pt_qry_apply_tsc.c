
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_time_cal {int dummy; } ;
struct pt_time {int dummy; } ;
struct pt_packet_tsc {int dummy; } ;
struct pt_config {int dummy; } ;


 int pt_tcal_update_tsc (struct pt_time_cal*,struct pt_packet_tsc const*,struct pt_config const*) ;
 int pt_time_update_tsc (struct pt_time*,struct pt_packet_tsc const*,struct pt_config const*) ;
 int pte_bad_config ;

__attribute__((used)) static int pt_qry_apply_tsc(struct pt_time *time, struct pt_time_cal *tcal,
       const struct pt_packet_tsc *packet,
       const struct pt_config *config)
{
 int errcode;






 errcode = pt_tcal_update_tsc(tcal, packet, config);
 if (errcode < 0 && (errcode != -pte_bad_config))
  return errcode;




 errcode = pt_time_update_tsc(time, packet, config);
 if (errcode < 0 && (errcode != -pte_bad_config))
  return errcode;

 return 0;
}
