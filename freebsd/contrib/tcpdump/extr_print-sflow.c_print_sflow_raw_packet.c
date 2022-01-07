
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sflow_expanded_flow_raw_t {int header_size; int stripped_bytes; int length; int protocol; } ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int ) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (struct sflow_expanded_flow_raw_t const) ;
 int sflow_flow_raw_protocol_values ;
 int tok2str (int ,char*,int ) ;

__attribute__((used)) static int
print_sflow_raw_packet(netdissect_options *ndo,
                       const u_char *pointer, u_int len)
{
    const struct sflow_expanded_flow_raw_t *sflow_flow_raw;

    if (len < sizeof(struct sflow_expanded_flow_raw_t))
 return 1;

    sflow_flow_raw = (const struct sflow_expanded_flow_raw_t *)pointer;
    ND_TCHECK(*sflow_flow_raw);
    ND_PRINT((ndo, "\n\t      protocol %s (%u), length %u, stripped bytes %u, header_size %u",
    tok2str(sflow_flow_raw_protocol_values,"Unknown",EXTRACT_32BITS(sflow_flow_raw->protocol)),
    EXTRACT_32BITS(sflow_flow_raw->protocol),
    EXTRACT_32BITS(sflow_flow_raw->length),
    EXTRACT_32BITS(sflow_flow_raw->stripped_bytes),
    EXTRACT_32BITS(sflow_flow_raw->header_size)));




    return 0;

trunc:
    return 1;
}
