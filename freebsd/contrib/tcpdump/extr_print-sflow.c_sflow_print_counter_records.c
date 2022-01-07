
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct sflow_counter_record_t {int length; int format; } ;
struct TYPE_11__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ EXTRACT_32BITS (int ) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct sflow_counter_record_t const) ;






 int print_sflow_counter_basevg (TYPE_1__*,int const*,scalar_t__) ;
 int print_sflow_counter_ethernet (TYPE_1__*,int const*,scalar_t__) ;
 int print_sflow_counter_generic (TYPE_1__*,int const*,scalar_t__) ;
 int print_sflow_counter_processor (TYPE_1__*,int const*,scalar_t__) ;
 int print_sflow_counter_token_ring (TYPE_1__*,int const*,scalar_t__) ;
 int print_sflow_counter_vlan (TYPE_1__*,int const*,scalar_t__) ;
 int print_unknown_data (TYPE_1__*,int const*,char*,scalar_t__) ;
 int sflow_counter_type_values ;
 char* tok2str (int ,char*,scalar_t__) ;

__attribute__((used)) static int
sflow_print_counter_records(netdissect_options *ndo,
                            const u_char *pointer, u_int len, u_int records)
{
    u_int nrecords;
    const u_char *tptr;
    u_int tlen;
    u_int counter_type;
    u_int counter_len;
    u_int enterprise;
    const struct sflow_counter_record_t *sflow_counter_record;

    nrecords = records;
    tptr = pointer;
    tlen = len;

    while (nrecords > 0) {

 if (tlen < sizeof(struct sflow_counter_record_t))
     return 1;
 sflow_counter_record = (const struct sflow_counter_record_t *)tptr;
 ND_TCHECK(*sflow_counter_record);

 enterprise = EXTRACT_32BITS(sflow_counter_record->format);
 counter_type = enterprise & 0x0FFF;
 enterprise = enterprise >> 20;
 counter_len = EXTRACT_32BITS(sflow_counter_record->length);
 ND_PRINT((ndo, "\n\t    enterprise %u, %s (%u) length %u",
        enterprise,
        (enterprise == 0) ? tok2str(sflow_counter_type_values,"Unknown",counter_type) : "Unknown",
        counter_type,
        counter_len));

 tptr += sizeof(struct sflow_counter_record_t);
 tlen -= sizeof(struct sflow_counter_record_t);

 if (tlen < counter_len)
     return 1;
 if (enterprise == 0) {
     switch (counter_type) {
     case 131:
  if (print_sflow_counter_generic(ndo, tptr, tlen))
      return 1;
  break;
     case 132:
  if (print_sflow_counter_ethernet(ndo, tptr, tlen))
      return 1;
  break;
     case 129:
  if (print_sflow_counter_token_ring(ndo, tptr,tlen))
      return 1;
  break;
     case 133:
  if (print_sflow_counter_basevg(ndo, tptr, tlen))
      return 1;
  break;
     case 128:
  if (print_sflow_counter_vlan(ndo, tptr, tlen))
      return 1;
  break;
     case 130:
  if (print_sflow_counter_processor(ndo, tptr, tlen))
      return 1;
  break;
     default:
  if (ndo->ndo_vflag <= 1)
      print_unknown_data(ndo, tptr, "\n\t\t", counter_len);
  break;
     }
 }
 tptr += counter_len;
 tlen -= counter_len;
 nrecords--;

    }

    return 0;

trunc:
    return 1;
}
