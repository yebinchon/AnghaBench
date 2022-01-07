
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int handle_assoc_response (int *,int const*,int ) ;

__attribute__((used)) static int
handle_reassoc_response(netdissect_options *ndo,
                        const u_char *p, u_int length)
{

 return handle_assoc_response(ndo, p, length);
}
