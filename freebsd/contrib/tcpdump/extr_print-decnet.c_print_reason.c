
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int reason2str ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static void
print_reason(netdissect_options *ndo,
             register int reason)
{
 ND_PRINT((ndo, "%s ", tok2str(reason2str, "reason-%d", reason)));
}
