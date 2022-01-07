
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct ntpdata {int status; int stratum; int ppoll; int root_delay; int root_dispersion; int refid; int ref_timestamp; int org_timestamp; int rec_timestamp; int xmt_timestamp; int key_id; int message_digest; int precision; } ;
struct TYPE_9__ {int ndo_snapend; int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_32BITS (int) ;


 int LEAPMASK ;
 int MODEMASK ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int) ;
 int ND_TCHECK2 (int,int) ;


 int VERSIONMASK ;
 int fn_printn (TYPE_1__*,int const*,int,int ) ;
 int ipaddr_string (TYPE_1__*,int*) ;
 int ntp_leapind_values ;
 int ntp_mode_values ;
 int ntp_stratum_values ;
 int p_ntp_delta (TYPE_1__*,int*,int*) ;
 int p_ntp_time (TYPE_1__*,int*) ;
 int p_sfix (TYPE_1__*,int*) ;
 int tok2str (int ,char*,int) ;

void
ntp_print(netdissect_options *ndo,
          register const u_char *cp, u_int length)
{
 register const struct ntpdata *bp;
 int mode, version, leapind;

 bp = (const struct ntpdata *)cp;

 ND_TCHECK(bp->status);

 version = (int)(bp->status & VERSIONMASK) >> 3;
 ND_PRINT((ndo, "NTPv%d", version));

 mode = bp->status & MODEMASK;
 if (!ndo->ndo_vflag) {
  ND_PRINT((ndo, ", %s, length %u",
            tok2str(ntp_mode_values, "Unknown mode", mode),
            length));
  return;
 }

 ND_PRINT((ndo, ", length %u\n\t%s",
           length,
           tok2str(ntp_mode_values, "Unknown mode", mode)));

 leapind = bp->status & LEAPMASK;
 ND_PRINT((ndo, ", Leap indicator: %s (%u)",
           tok2str(ntp_leapind_values, "Unknown", leapind),
           leapind));

 ND_TCHECK(bp->stratum);
 ND_PRINT((ndo, ", Stratum %u (%s)",
  bp->stratum,
  tok2str(ntp_stratum_values, (bp->stratum >=2 && bp->stratum<=15) ? "secondary reference" : "reserved", bp->stratum)));

 ND_TCHECK(bp->ppoll);
 ND_PRINT((ndo, ", poll %u (%us)", bp->ppoll, 1 << bp->ppoll));


 ND_TCHECK2(bp->root_delay, 0);
 ND_PRINT((ndo, ", precision %d", bp->precision));

 ND_TCHECK(bp->root_delay);
 ND_PRINT((ndo, "\n\tRoot Delay: "));
 p_sfix(ndo, &bp->root_delay);

 ND_TCHECK(bp->root_dispersion);
 ND_PRINT((ndo, ", Root dispersion: "));
 p_sfix(ndo, &bp->root_dispersion);

 ND_TCHECK(bp->refid);
 ND_PRINT((ndo, ", Reference-ID: "));

 switch (bp->stratum) {

 case 128:
  ND_PRINT((ndo, "(unspec)"));
  break;

 case 129:
  if (fn_printn(ndo, (const u_char *)&(bp->refid), 4, ndo->ndo_snapend))
   goto trunc;
  break;

 case 131:
  ND_PRINT((ndo, "%s INFO_QUERY", ipaddr_string(ndo, &(bp->refid))));

  return;

 case 130:
  ND_PRINT((ndo, "%s INFO_REPLY", ipaddr_string(ndo, &(bp->refid))));

  return;

 default:
  ND_PRINT((ndo, "%s", ipaddr_string(ndo, &(bp->refid))));
  break;
 }

 ND_TCHECK(bp->ref_timestamp);
 ND_PRINT((ndo, "\n\t  Reference Timestamp:  "));
 p_ntp_time(ndo, &(bp->ref_timestamp));

 ND_TCHECK(bp->org_timestamp);
 ND_PRINT((ndo, "\n\t  Originator Timestamp: "));
 p_ntp_time(ndo, &(bp->org_timestamp));

 ND_TCHECK(bp->rec_timestamp);
 ND_PRINT((ndo, "\n\t  Receive Timestamp:    "));
 p_ntp_time(ndo, &(bp->rec_timestamp));

 ND_TCHECK(bp->xmt_timestamp);
 ND_PRINT((ndo, "\n\t  Transmit Timestamp:   "));
 p_ntp_time(ndo, &(bp->xmt_timestamp));

 ND_PRINT((ndo, "\n\t    Originator - Receive Timestamp:  "));
 p_ntp_delta(ndo, &(bp->org_timestamp), &(bp->rec_timestamp));

 ND_PRINT((ndo, "\n\t    Originator - Transmit Timestamp: "));
 p_ntp_delta(ndo, &(bp->org_timestamp), &(bp->xmt_timestamp));

 if ( (sizeof(struct ntpdata) - length) == 16) {
  ND_TCHECK(bp->key_id);
  ND_PRINT((ndo, "\n\tKey id: %u", bp->key_id));
 } else if ( (sizeof(struct ntpdata) - length) == 0) {
  ND_TCHECK(bp->key_id);
  ND_PRINT((ndo, "\n\tKey id: %u", bp->key_id));
  ND_TCHECK2(bp->message_digest, sizeof (bp->message_digest));
                ND_PRINT((ndo, "\n\tAuthentication: %08x%08x%08x%08x",
                 EXTRACT_32BITS(bp->message_digest),
                 EXTRACT_32BITS(bp->message_digest + 4),
                 EXTRACT_32BITS(bp->message_digest + 8),
                 EXTRACT_32BITS(bp->message_digest + 12)));
        }
 return;

trunc:
 ND_PRINT((ndo, " [|ntp]"));
}
