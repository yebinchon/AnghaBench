
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int txtproto_print (int *,int const*,int ,char*,int *,int ) ;

void
smtp_print(netdissect_options *ndo, const u_char *pptr, u_int len)
{
 txtproto_print(ndo, pptr, len, "smtp", ((void*)0), 0);
}
