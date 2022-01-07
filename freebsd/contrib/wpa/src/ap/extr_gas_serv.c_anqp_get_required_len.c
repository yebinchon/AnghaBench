
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hostapd_data {int dummy; } ;
struct anqp_element {int payload; } ;


 struct anqp_element* get_anqp_elem (struct hostapd_data*,int const) ;
 scalar_t__ wpabuf_len (int ) ;

__attribute__((used)) static size_t anqp_get_required_len(struct hostapd_data *hapd,
        const u16 *infoid,
        unsigned int num_infoid)
{
 size_t len = 0;
 unsigned int i;

 for (i = 0; i < num_infoid; i++) {
  struct anqp_element *elem = get_anqp_elem(hapd, infoid[i]);

  if (elem)
   len += 2 + 2 + wpabuf_len(elem->payload);
 }

 return len;
}
