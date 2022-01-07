
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* uint16_t ;
struct buf_pr {int dummy; } ;


 int bprintf (struct buf_pr*,char*,char const*) ;
 int icmp6codes ;
 char* match_value (int ,char const*) ;

void
print_unreach6_code(struct buf_pr *bp, uint16_t code)
{
 char const *s = match_value(icmp6codes, code);

 if (s != ((void*)0))
  bprintf(bp, "unreach6 %s", s);
 else
  bprintf(bp, "unreach6 %u", code);
}
