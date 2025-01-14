
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sflow_flow_sample_t {int out_interface; int in_interface; int drops; int pool; int rate; int seqnum; int records; int typesource; } ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int ) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (struct sflow_flow_sample_t const) ;
 int sflow_print_flow_records (int *,int const*,int,int) ;

__attribute__((used)) static int
sflow_print_flow_sample(netdissect_options *ndo,
                        const u_char *pointer, u_int len)
{
    const struct sflow_flow_sample_t *sflow_flow_sample;
    u_int nrecords;
    u_int typesource;
    u_int type;
    u_int index;

    if (len < sizeof(struct sflow_flow_sample_t))
 return 1;

    sflow_flow_sample = (const struct sflow_flow_sample_t *)pointer;
    ND_TCHECK(*sflow_flow_sample);

    typesource = EXTRACT_32BITS(sflow_flow_sample->typesource);
    nrecords = EXTRACT_32BITS(sflow_flow_sample->records);
    type = typesource >> 24;
    index = typesource & 0x0FFF;

    ND_PRINT((ndo, " seqnum %u, type %u, idx %u, rate %u, pool %u, drops %u, input %u output %u records %u",
    EXTRACT_32BITS(sflow_flow_sample->seqnum),
    type,
    index,
    EXTRACT_32BITS(sflow_flow_sample->rate),
    EXTRACT_32BITS(sflow_flow_sample->pool),
    EXTRACT_32BITS(sflow_flow_sample->drops),
    EXTRACT_32BITS(sflow_flow_sample->in_interface),
    EXTRACT_32BITS(sflow_flow_sample->out_interface),
    nrecords));

    return sflow_print_flow_records(ndo, pointer + sizeof(struct sflow_flow_sample_t),
        len - sizeof(struct sflow_flow_sample_t),
        nrecords);

trunc:
    return 1;
}
