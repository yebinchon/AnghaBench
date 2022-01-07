
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_time_cal {int dummy; } ;
struct pt_time {int dummy; } ;
struct pt_packet_cbr {int dummy; } ;
struct pt_config {int dummy; } ;


 int pt_tcal_header_cbr (struct pt_time_cal*,struct pt_packet_cbr const*,struct pt_config const*) ;
 int pt_time_update_cbr (struct pt_time*,struct pt_packet_cbr const*,struct pt_config const*) ;
 int pte_bad_config ;

__attribute__((used)) static int pt_qry_apply_header_cbr(struct pt_time *time,
       struct pt_time_cal *tcal,
       const struct pt_packet_cbr *packet,
       const struct pt_config *config)
{
 int errcode;






 errcode = pt_tcal_header_cbr(tcal, packet, config);
 if (errcode < 0 && (errcode != -pte_bad_config))
  return errcode;




 errcode = pt_time_update_cbr(time, packet, config);
 if (errcode < 0 && (errcode != -pte_bad_config))
  return errcode;

 return 0;
}
