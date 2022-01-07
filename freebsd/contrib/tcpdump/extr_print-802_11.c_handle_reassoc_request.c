
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
struct mgmt_body_t {int ap; void* listen_interval; void* capability_info; } ;
typedef int pbody ;
typedef int netdissect_options ;


 void* EXTRACT_LE_16BITS (int const*) ;
 scalar_t__ IEEE802_11_AP_LEN ;
 scalar_t__ IEEE802_11_CAPINFO_LEN ;
 scalar_t__ IEEE802_11_LISTENINT_LEN ;
 int ND_PRINT (int *) ;
 int ND_TTEST2 (int const,scalar_t__) ;
 int PRINT_SSID (struct mgmt_body_t) ;
 int etheraddr_string (int *,int ) ;
 int memcpy (int *,int const*,scalar_t__) ;
 int memset (struct mgmt_body_t*,int ,int) ;
 int parse_elements (int *,struct mgmt_body_t*,int const*,int,scalar_t__) ;

__attribute__((used)) static int
handle_reassoc_request(netdissect_options *ndo,
                       const u_char *p, u_int length)
{
 struct mgmt_body_t pbody;
 int offset = 0;
 int ret;

 memset(&pbody, 0, sizeof(pbody));

 if (!ND_TTEST2(*p, IEEE802_11_CAPINFO_LEN + IEEE802_11_LISTENINT_LEN +
     IEEE802_11_AP_LEN))
  return 0;
 if (length < IEEE802_11_CAPINFO_LEN + IEEE802_11_LISTENINT_LEN +
     IEEE802_11_AP_LEN)
  return 0;
 pbody.capability_info = EXTRACT_LE_16BITS(p);
 offset += IEEE802_11_CAPINFO_LEN;
 length -= IEEE802_11_CAPINFO_LEN;
 pbody.listen_interval = EXTRACT_LE_16BITS(p+offset);
 offset += IEEE802_11_LISTENINT_LEN;
 length -= IEEE802_11_LISTENINT_LEN;
 memcpy(&pbody.ap, p+offset, IEEE802_11_AP_LEN);
 offset += IEEE802_11_AP_LEN;
 length -= IEEE802_11_AP_LEN;

 ret = parse_elements(ndo, &pbody, p, offset, length);

 PRINT_SSID(pbody);
 ND_PRINT((ndo, " AP : %s", etheraddr_string(ndo, pbody.ap )));

 return ret;
}
