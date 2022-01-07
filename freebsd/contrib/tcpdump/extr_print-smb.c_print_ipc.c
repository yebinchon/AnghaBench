
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int smb_fdata (int *,int const*,char*,int const*,int ) ;
 int unicodestr ;

__attribute__((used)) static void
print_ipc(netdissect_options *ndo,
          const u_char *param, int paramlen, const u_char *data, int datalen)
{
    if (paramlen)
 smb_fdata(ndo, param, "Command=[w]\nStr1=[S]\nStr2=[S]\n", param + paramlen,
     unicodestr);
    if (datalen)
 smb_fdata(ndo, data, "IPC ", data + datalen, unicodestr);
}
