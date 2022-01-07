
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sflow_ethernet_counter_t {int symbol_errors; int mac_receive_errors; int frame_too_longs; int carrier_sense_errors; int mac_transmit_errors; int excessive_collisions; int late_collisions; int deferred_transmissions; int test_errors; int multiple_collision_frames; int single_collision_frames; int fcserrors; int alignerrors; } ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int ) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (struct sflow_ethernet_counter_t const) ;

__attribute__((used)) static int
print_sflow_counter_ethernet(netdissect_options *ndo,
                             const u_char *pointer, u_int len)
{
    const struct sflow_ethernet_counter_t *sflow_eth_counter;

    if (len < sizeof(struct sflow_ethernet_counter_t))
 return 1;

    sflow_eth_counter = (const struct sflow_ethernet_counter_t *)pointer;
    ND_TCHECK(*sflow_eth_counter);
    ND_PRINT((ndo, "\n\t      align errors %u, fcs errors %u, single collision %u, multiple collision %u, test error %u",
    EXTRACT_32BITS(sflow_eth_counter->alignerrors),
    EXTRACT_32BITS(sflow_eth_counter->fcserrors),
    EXTRACT_32BITS(sflow_eth_counter->single_collision_frames),
    EXTRACT_32BITS(sflow_eth_counter->multiple_collision_frames),
    EXTRACT_32BITS(sflow_eth_counter->test_errors)));
    ND_PRINT((ndo, "\n\t      deferred %u, late collision %u, excessive collision %u, mac trans error %u",
    EXTRACT_32BITS(sflow_eth_counter->deferred_transmissions),
    EXTRACT_32BITS(sflow_eth_counter->late_collisions),
    EXTRACT_32BITS(sflow_eth_counter->excessive_collisions),
    EXTRACT_32BITS(sflow_eth_counter->mac_transmit_errors)));
    ND_PRINT((ndo, "\n\t      carrier error %u, frames too long %u, mac receive errors %u, symbol errors %u",
    EXTRACT_32BITS(sflow_eth_counter->carrier_sense_errors),
    EXTRACT_32BITS(sflow_eth_counter->frame_too_longs),
    EXTRACT_32BITS(sflow_eth_counter->mac_receive_errors),
    EXTRACT_32BITS(sflow_eth_counter->symbol_errors)));

    return 0;

trunc:
    return 1;
}
