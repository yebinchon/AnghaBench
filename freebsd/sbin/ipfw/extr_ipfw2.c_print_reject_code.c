
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* uint16_t ;
struct buf_pr {int dummy; } ;


 int bprintf (struct buf_pr*,char*,char const*) ;
 int icmpcodes ;
 char* match_value (int ,char const*) ;

__attribute__((used)) static void
print_reject_code(struct buf_pr *bp, uint16_t code)
{
 char const *s;

 if ((s = match_value(icmpcodes, code)) != ((void*)0))
  bprintf(bp, "unreach %s", s);
 else
  bprintf(bp, "unreach %u", code);
}
