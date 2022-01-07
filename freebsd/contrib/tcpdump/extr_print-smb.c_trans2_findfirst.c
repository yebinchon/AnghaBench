
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 scalar_t__ request ;
 int smb_fdata (int *,int const*,char const*,int const*,int ) ;
 int smb_print_data (int *,int const*,int) ;
 int unicodestr ;

__attribute__((used)) static void
trans2_findfirst(netdissect_options *ndo,
                 const u_char *param, const u_char *data, int pcnt, int dcnt)
{
    const char *fmt;

    if (request)
 fmt = "Attribute=[A]\nSearchCount=[d]\nFlags=[w]\nLevel=[dP4]\nFile=[S]\n";
    else
 fmt = "Handle=[w]\nCount=[d]\nEOS=[w]\nEoffset=[d]\nLastNameOfs=[w]\n";

    smb_fdata(ndo, param, fmt, param + pcnt, unicodestr);
    if (dcnt) {
 ND_PRINT((ndo, "data:\n"));
 smb_print_data(ndo, data, dcnt);
    }
}
