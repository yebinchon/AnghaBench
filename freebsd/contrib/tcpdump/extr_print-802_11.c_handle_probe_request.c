
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct mgmt_body_t {int dummy; } ;
typedef int pbody ;
typedef int netdissect_options ;


 int PRINT_RATES (struct mgmt_body_t) ;
 int PRINT_SSID (struct mgmt_body_t) ;
 int memset (struct mgmt_body_t*,int ,int) ;
 int parse_elements (int *,struct mgmt_body_t*,int const*,int,int ) ;

__attribute__((used)) static int
handle_probe_request(netdissect_options *ndo,
                     const u_char *p, u_int length)
{
 struct mgmt_body_t pbody;
 int offset = 0;
 int ret;

 memset(&pbody, 0, sizeof(pbody));

 ret = parse_elements(ndo, &pbody, p, offset, length);

 PRINT_SSID(pbody);
 PRINT_RATES(pbody);

 return ret;
}
