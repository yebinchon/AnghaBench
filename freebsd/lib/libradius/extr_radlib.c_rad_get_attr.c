
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {scalar_t__ in_pos; scalar_t__ in_len; int* in; } ;


 int generr (struct rad_handle*,char*) ;

int
rad_get_attr(struct rad_handle *h, const void **value, size_t *len)
{
 int type;

 if (h->in_pos >= h->in_len)
  return 0;
 if (h->in_pos + 2 > h->in_len) {
  generr(h, "Malformed attribute in response");
  return -1;
 }
 type = h->in[h->in_pos++];
 *len = h->in[h->in_pos++] - 2;
 if (h->in_pos + (int)*len > h->in_len) {
  generr(h, "Malformed attribute in response");
  return -1;
 }
 *value = &h->in[h->in_pos];
 h->in_pos += *len;
 return type;
}
