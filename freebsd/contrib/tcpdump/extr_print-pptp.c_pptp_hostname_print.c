
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;

__attribute__((used)) static void
pptp_hostname_print(netdissect_options *ndo,
                    const u_char *hostname)
{
 ND_PRINT((ndo, " HOSTNAME(%.64s)", hostname));
}
