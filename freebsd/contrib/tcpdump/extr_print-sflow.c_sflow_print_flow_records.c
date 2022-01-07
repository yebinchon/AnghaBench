
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct sflow_flow_record_t {int length; int format; } ;
struct TYPE_8__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ EXTRACT_32BITS (int ) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct sflow_flow_record_t const) ;
 int print_sflow_ethernet_frame (TYPE_1__*,int const*,scalar_t__) ;
 int print_sflow_extended_switch_data (TYPE_1__*,int const*,scalar_t__) ;
 int print_sflow_raw_packet (TYPE_1__*,int const*,scalar_t__) ;
 int print_unknown_data (TYPE_1__*,int const*,char*,scalar_t__) ;
 int sflow_flow_type_values ;
 char* tok2str (int ,char*,scalar_t__) ;

__attribute__((used)) static int
sflow_print_flow_records(netdissect_options *ndo,
                         const u_char *pointer, u_int len, u_int records)
{
    u_int nrecords;
    const u_char *tptr;
    u_int tlen;
    u_int flow_type;
    u_int enterprise;
    u_int flow_len;
    const struct sflow_flow_record_t *sflow_flow_record;

    nrecords = records;
    tptr = pointer;
    tlen = len;

    while (nrecords > 0) {

 if (tlen < sizeof(struct sflow_flow_record_t))
     return 1;

 sflow_flow_record = (const struct sflow_flow_record_t *)tptr;
 ND_TCHECK(*sflow_flow_record);




 enterprise = EXTRACT_32BITS(sflow_flow_record->format);
 flow_type = enterprise & 0x0FFF;
 enterprise = enterprise >> 12;
 flow_len = EXTRACT_32BITS(sflow_flow_record->length);
 ND_PRINT((ndo, "\n\t    enterprise %u %s (%u) length %u",
        enterprise,
        (enterprise == 0) ? tok2str(sflow_flow_type_values,"Unknown",flow_type) : "Unknown",
        flow_type,
        flow_len));

 tptr += sizeof(struct sflow_flow_record_t);
 tlen -= sizeof(struct sflow_flow_record_t);

 if (tlen < flow_len)
     return 1;

 if (enterprise == 0) {
     switch (flow_type) {
     case 128:
  if (print_sflow_raw_packet(ndo, tptr, tlen))
      return 1;
  break;
     case 134:
  if (print_sflow_extended_switch_data(ndo, tptr, tlen))
      return 1;
  break;
     case 143:
  if (print_sflow_ethernet_frame(ndo, tptr, tlen))
      return 1;
  break;

     case 130:
     case 129:
     case 135:
     case 142:
     case 132:
     case 133:
     case 141:
     case 136:
     case 138:
     case 137:
     case 140:
     case 139:
     case 131:
  break;
     default:
  if (ndo->ndo_vflag <= 1)
      print_unknown_data(ndo, tptr, "\n\t\t", flow_len);
  break;
     }
 }
 tptr += flow_len;
 tlen -= flow_len;
 nrecords--;

    }

    return 0;

trunc:
    return 1;
}
