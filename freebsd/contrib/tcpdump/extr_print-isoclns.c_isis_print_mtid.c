
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ISIS_MASK_MTFLAGS (int ) ;
 int ISIS_MASK_MTID (int ) ;
 int ND_PRINT (int *) ;
 int ND_TTEST2 (int const,int) ;
 int bittok2str (int ,char*,int ) ;
 int isis_mt_flag_values ;
 int isis_mt_values ;
 int tok2str (int ,char*,int ) ;

__attribute__((used)) static int
isis_print_mtid(netdissect_options *ndo,
                const uint8_t *tptr, const char *ident)
{
    if (!ND_TTEST2(*tptr, 2))
        return(0);

    ND_PRINT((ndo, "%s%s",
           ident,
           tok2str(isis_mt_values,
                   "Reserved for IETF Consensus",
                   ISIS_MASK_MTID(EXTRACT_16BITS(tptr)))));

    ND_PRINT((ndo, " Topology (0x%03x), Flags: [%s]",
           ISIS_MASK_MTID(EXTRACT_16BITS(tptr)),
           bittok2str(isis_mt_flag_values, "none",ISIS_MASK_MTFLAGS(EXTRACT_16BITS(tptr)))));

    return(2);
}
