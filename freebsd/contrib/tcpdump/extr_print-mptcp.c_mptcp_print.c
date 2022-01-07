
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct mptcp_option {int sub_etc; } ;
typedef int netdissect_options ;
struct TYPE_2__ {int (* print ) (int *,int const*,int,int ) ;int name; } ;


 int MPTCP_OPT_SUBTYPE (int ) ;
 scalar_t__ MPTCP_SUB_FCLOSE ;
 int ND_PRINT (int *) ;
 int min (int ,scalar_t__) ;
 TYPE_1__* mptcp_options ;
 int stub1 (int *,int const*,int,int ) ;

int
mptcp_print(netdissect_options *ndo,
            const u_char *cp, u_int len, u_char flags)
{
        const struct mptcp_option *opt;
        u_int subtype;

        if (len < 3)
                return 0;

        opt = (const struct mptcp_option *) cp;
        subtype = min(MPTCP_OPT_SUBTYPE(opt->sub_etc), MPTCP_SUB_FCLOSE + 1);

        ND_PRINT((ndo, " %s", mptcp_options[subtype].name));
        return mptcp_options[subtype].print(ndo, cp, len, flags);
}
