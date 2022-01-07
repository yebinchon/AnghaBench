
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdissect_options ;


 int ND_PRINT (int *) ;

__attribute__((used)) static void
l2tp_packet_proc_delay_print(netdissect_options *ndo)
{
 ND_PRINT((ndo, "obsolete"));
}
