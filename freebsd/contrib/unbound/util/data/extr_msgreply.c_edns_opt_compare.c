
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edns_option {scalar_t__ opt_code; scalar_t__ opt_len; int opt_data; } ;


 int log_assert (int) ;
 int memcmp (int ,int ,scalar_t__) ;

int edns_opt_compare(struct edns_option* p, struct edns_option* q)
{
 if(!p && !q) return 0;
 if(!p) return -1;
 if(!q) return 1;
 log_assert(p && q);
 if(p->opt_code != q->opt_code)
  return (int)q->opt_code - (int)p->opt_code;
 if(p->opt_len != q->opt_len)
  return (int)q->opt_len - (int)p->opt_len;
 if(p->opt_len != 0)
  return memcmp(p->opt_data, q->opt_data, p->opt_len);
 return 0;
}
