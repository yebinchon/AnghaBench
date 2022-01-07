
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int p2p_scan_result_text (int const*,size_t,char*,char*) ;

int wpas_p2p_scan_result_text(const u8 *ies, size_t ies_len, char *buf,
         char *end)
{
 return p2p_scan_result_text(ies, ies_len, buf, end);
}
