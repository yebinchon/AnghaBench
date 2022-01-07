
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int metric_error; int metric_expense; int metric_delay; int metric_default; } ;
struct isis_tlv_ip_reach {TYPE_1__ isis_metric_block; int prefix; int mask; } ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int ) ;
 scalar_t__ ISIS_LSP_TLV_METRIC_IE (int ) ;
 int ISIS_LSP_TLV_METRIC_SUPPORTED (int ) ;
 scalar_t__ ISIS_LSP_TLV_METRIC_UPDOWN (int ) ;
 int ISIS_LSP_TLV_METRIC_VALUE (int ) ;
 int ND_PRINT (int *) ;
 int ND_TTEST (struct isis_tlv_ip_reach const) ;
 int ipaddr_string (int *,int ) ;
 int mask2plen (int ) ;

__attribute__((used)) static int
isis_print_tlv_ip_reach(netdissect_options *ndo,
                        const uint8_t *cp, const char *ident, int length)
{
 int prefix_len;
 const struct isis_tlv_ip_reach *tlv_ip_reach;

 tlv_ip_reach = (const struct isis_tlv_ip_reach *)cp;

 while (length > 0) {
  if ((size_t)length < sizeof(*tlv_ip_reach)) {
   ND_PRINT((ndo, "short IPv4 Reachability (%d vs %lu)",
                               length,
                               (unsigned long)sizeof(*tlv_ip_reach)));
   return (0);
  }

  if (!ND_TTEST(*tlv_ip_reach))
      return (0);

  prefix_len = mask2plen(EXTRACT_32BITS(tlv_ip_reach->mask));

  if (prefix_len == -1)
   ND_PRINT((ndo, "%sIPv4 prefix: %s mask %s",
                               ident,
          ipaddr_string(ndo, (tlv_ip_reach->prefix)),
          ipaddr_string(ndo, (tlv_ip_reach->mask))));
  else
   ND_PRINT((ndo, "%sIPv4 prefix: %15s/%u",
                               ident,
          ipaddr_string(ndo, (tlv_ip_reach->prefix)),
          prefix_len));

  ND_PRINT((ndo, ", Distribution: %s, Metric: %u, %s",
                       ISIS_LSP_TLV_METRIC_UPDOWN(tlv_ip_reach->isis_metric_block.metric_default) ? "down" : "up",
                       ISIS_LSP_TLV_METRIC_VALUE(tlv_ip_reach->isis_metric_block.metric_default),
                       ISIS_LSP_TLV_METRIC_IE(tlv_ip_reach->isis_metric_block.metric_default) ? "External" : "Internal"));

  if (!ISIS_LSP_TLV_METRIC_SUPPORTED(tlv_ip_reach->isis_metric_block.metric_delay))
                    ND_PRINT((ndo, "%s  Delay Metric: %u, %s",
                           ident,
                           ISIS_LSP_TLV_METRIC_VALUE(tlv_ip_reach->isis_metric_block.metric_delay),
                           ISIS_LSP_TLV_METRIC_IE(tlv_ip_reach->isis_metric_block.metric_delay) ? "External" : "Internal"));

  if (!ISIS_LSP_TLV_METRIC_SUPPORTED(tlv_ip_reach->isis_metric_block.metric_expense))
                    ND_PRINT((ndo, "%s  Expense Metric: %u, %s",
                           ident,
                           ISIS_LSP_TLV_METRIC_VALUE(tlv_ip_reach->isis_metric_block.metric_expense),
                           ISIS_LSP_TLV_METRIC_IE(tlv_ip_reach->isis_metric_block.metric_expense) ? "External" : "Internal"));

  if (!ISIS_LSP_TLV_METRIC_SUPPORTED(tlv_ip_reach->isis_metric_block.metric_error))
                    ND_PRINT((ndo, "%s  Error Metric: %u, %s",
                           ident,
                           ISIS_LSP_TLV_METRIC_VALUE(tlv_ip_reach->isis_metric_block.metric_error),
                           ISIS_LSP_TLV_METRIC_IE(tlv_ip_reach->isis_metric_block.metric_error) ? "External" : "Internal"));

  length -= sizeof(struct isis_tlv_ip_reach);
  tlv_ip_reach++;
 }
 return (1);
}
