
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct isis_subtlv_spb_mcid {int aux_mcid; int mcid; } ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;

 int ISIS_SUBTLV_SPB_BVID_MIN_LEN ;

 int ISIS_SUBTLV_SPB_DIGEST_MIN_LEN ;

 int ISIS_SUBTLV_SPB_MCID_MIN_LEN ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int isis_mt_port_cap_subtlv_values ;
 int isis_print_mcid (int *,int *) ;
 int tok2str (int ,char*,int) ;
 int tstr ;

__attribute__((used)) static int
isis_print_mt_port_cap_subtlv(netdissect_options *ndo,
                              const uint8_t *tptr, int len)
{
  int stlv_type, stlv_len;
  const struct isis_subtlv_spb_mcid *subtlv_spb_mcid;
  int i;

  while (len > 2)
  {
    ND_TCHECK2(*tptr, 2);
    stlv_type = *(tptr++);
    stlv_len = *(tptr++);


    ND_PRINT((ndo, "\n\t       %s subTLV #%u, length: %u",
               tok2str(isis_mt_port_cap_subtlv_values, "unknown", stlv_type),
               stlv_type,
               stlv_len));


    len = len -2;


    if (len < stlv_len)
      goto trunc;

    ND_TCHECK2(*(tptr), stlv_len);

    switch (stlv_type)
    {
      case 128:
      {
       if (stlv_len < ISIS_SUBTLV_SPB_MCID_MIN_LEN)
         goto trunc;

        subtlv_spb_mcid = (const struct isis_subtlv_spb_mcid *)tptr;

        ND_PRINT((ndo, "\n\t         MCID: "));
        isis_print_mcid(ndo, &(subtlv_spb_mcid->mcid));




        ND_PRINT((ndo, "\n\t         AUX-MCID: "));
        isis_print_mcid(ndo, &(subtlv_spb_mcid->aux_mcid));



        tptr = tptr + ISIS_SUBTLV_SPB_MCID_MIN_LEN;
        len = len - ISIS_SUBTLV_SPB_MCID_MIN_LEN;
        stlv_len = stlv_len - ISIS_SUBTLV_SPB_MCID_MIN_LEN;

        break;
      }

      case 129:
      {
        if (stlv_len < ISIS_SUBTLV_SPB_DIGEST_MIN_LEN)
          goto trunc;

        ND_PRINT((ndo, "\n\t        RES: %d V: %d A: %d D: %d",
                        (*(tptr) >> 5), (((*tptr)>> 4) & 0x01),
                        ((*(tptr) >> 2) & 0x03), ((*tptr) & 0x03)));

        tptr++;

        ND_PRINT((ndo, "\n\t         Digest: "));

        for(i=1;i<=8; i++)
        {
            ND_PRINT((ndo, "%08x ", EXTRACT_32BITS(tptr)));
            if (i%4 == 0 && i != 8)
              ND_PRINT((ndo, "\n\t                 "));
            tptr = tptr + 4;
        }

        len = len - ISIS_SUBTLV_SPB_DIGEST_MIN_LEN;
        stlv_len = stlv_len - ISIS_SUBTLV_SPB_DIGEST_MIN_LEN;

        break;
      }

      case 130:
      {
        while (stlv_len >= ISIS_SUBTLV_SPB_BVID_MIN_LEN)
        {
          ND_PRINT((ndo, "\n\t           ECT: %08x",
                      EXTRACT_32BITS(tptr)));

          tptr = tptr+4;

          ND_PRINT((ndo, " BVID: %d, U:%01x M:%01x ",
                     (EXTRACT_16BITS (tptr) >> 4) ,
                     (EXTRACT_16BITS (tptr) >> 3) & 0x01,
                     (EXTRACT_16BITS (tptr) >> 2) & 0x01));

          tptr = tptr + 2;
          len = len - ISIS_SUBTLV_SPB_BVID_MIN_LEN;
          stlv_len = stlv_len - ISIS_SUBTLV_SPB_BVID_MIN_LEN;
        }

        break;
      }

      default:
        break;
    }
    tptr += stlv_len;
    len -= stlv_len;
  }

  return 0;

  trunc:
    ND_PRINT((ndo, "\n\t\t"));
    ND_PRINT((ndo, "%s", tstr));
    return(1);
}
