
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int p2p_attr_text (struct wpabuf*,char*,char*) ;

int p2p_ie_text(struct wpabuf *p2p_ie, char *buf, char *end)
{
 return p2p_attr_text(p2p_ie, buf, end);
}
