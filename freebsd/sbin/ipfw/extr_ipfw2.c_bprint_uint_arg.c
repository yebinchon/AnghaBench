
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* uint32_t ;
struct buf_pr {int dummy; } ;


 char const* IP_FW_TARG ;
 int bprintf (struct buf_pr*,char*,...) ;

void
bprint_uint_arg(struct buf_pr *bp, const char *str, uint32_t arg)
{

 if (str != ((void*)0))
  bprintf(bp, "%s", str);
 if (arg == IP_FW_TARG)
  bprintf(bp, "tablearg");
 else
  bprintf(bp, "%u", arg);
}
