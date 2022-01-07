
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 struct wpabuf* ndef_parse_records (struct wpabuf const*,int ) ;
 int p2p_filter ;

struct wpabuf * ndef_parse_p2p(const struct wpabuf *buf)
{
 return ndef_parse_records(buf, p2p_filter);
}
