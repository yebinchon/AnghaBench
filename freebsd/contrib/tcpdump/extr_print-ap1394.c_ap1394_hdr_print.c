
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
struct firewire_header {int firewire_type; int firewire_dhost; int firewire_shost; } ;
struct TYPE_5__ {int ndo_qflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int *) ;
 int ND_PRINT (TYPE_1__*) ;
 int ethertype_values ;
 int fwaddr_string (TYPE_1__*,int ) ;
 int tok2str (int ,char*,int ) ;

__attribute__((used)) static inline void
ap1394_hdr_print(netdissect_options *ndo, register const u_char *bp, u_int length)
{
 register const struct firewire_header *fp;
 uint16_t firewire_type;

 fp = (const struct firewire_header *)bp;

 ND_PRINT((ndo, "%s > %s",
       fwaddr_string(ndo, fp->firewire_shost),
       fwaddr_string(ndo, fp->firewire_dhost)));

 firewire_type = EXTRACT_16BITS(&fp->firewire_type);
 if (!ndo->ndo_qflag) {
  ND_PRINT((ndo, ", ethertype %s (0x%04x)",
          tok2str(ethertype_values,"Unknown", firewire_type),
                               firewire_type));
        } else {
                ND_PRINT((ndo, ", %s", tok2str(ethertype_values,"Unknown Ethertype (0x%04x)", firewire_type)));
        }

 ND_PRINT((ndo, ", length %u: ", length));
}
