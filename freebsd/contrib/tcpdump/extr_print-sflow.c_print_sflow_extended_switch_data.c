
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sflow_extended_switch_data_t {int dst_pri; int dst_vlan; int src_pri; int src_vlan; } ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int ) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (struct sflow_extended_switch_data_t const) ;

__attribute__((used)) static int
print_sflow_extended_switch_data(netdissect_options *ndo,
                                 const u_char *pointer, u_int len)
{
    const struct sflow_extended_switch_data_t *sflow_extended_sw_data;

    if (len < sizeof(struct sflow_extended_switch_data_t))
 return 1;

    sflow_extended_sw_data = (const struct sflow_extended_switch_data_t *)pointer;
    ND_TCHECK(*sflow_extended_sw_data);
    ND_PRINT((ndo, "\n\t      src vlan %u, src pri %u, dst vlan %u, dst pri %u",
    EXTRACT_32BITS(sflow_extended_sw_data->src_vlan),
    EXTRACT_32BITS(sflow_extended_sw_data->src_pri),
    EXTRACT_32BITS(sflow_extended_sw_data->dst_vlan),
    EXTRACT_32BITS(sflow_extended_sw_data->dst_pri)));

    return 0;

trunc:
    return 1;
}
