
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sflow_expanded_counter_sample_t {int index; int type; int seqnum; int records; } ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int ) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (struct sflow_expanded_counter_sample_t const) ;
 int sflow_print_counter_records (int *,int const*,int,int) ;

__attribute__((used)) static int
sflow_print_expanded_counter_sample(netdissect_options *ndo,
                                    const u_char *pointer, u_int len)
{
    const struct sflow_expanded_counter_sample_t *sflow_expanded_counter_sample;
    u_int nrecords;


    if (len < sizeof(struct sflow_expanded_counter_sample_t))
 return 1;

    sflow_expanded_counter_sample = (const struct sflow_expanded_counter_sample_t *)pointer;
    ND_TCHECK(*sflow_expanded_counter_sample);

    nrecords = EXTRACT_32BITS(sflow_expanded_counter_sample->records);

    ND_PRINT((ndo, " seqnum %u, type %u, idx %u, records %u",
    EXTRACT_32BITS(sflow_expanded_counter_sample->seqnum),
    EXTRACT_32BITS(sflow_expanded_counter_sample->type),
    EXTRACT_32BITS(sflow_expanded_counter_sample->index),
    nrecords));

    return sflow_print_counter_records(ndo, pointer + sizeof(struct sflow_expanded_counter_sample_t),
           len - sizeof(struct sflow_expanded_counter_sample_t),
           nrecords);

trunc:
    return 1;
}
