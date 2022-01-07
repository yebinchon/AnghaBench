
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 scalar_t__ roaming_consortium_anqp_match (struct wpabuf const*,int const*,size_t) ;
 scalar_t__ roaming_consortium_element_match (int const*,int const*,size_t) ;

__attribute__((used)) static int roaming_consortium_match(const u8 *ie, const struct wpabuf *anqp,
        const u8 *rc_id, size_t rc_len)
{
 return roaming_consortium_element_match(ie, rc_id, rc_len) ||
  roaming_consortium_anqp_match(anqp, rc_id, rc_len);
}
