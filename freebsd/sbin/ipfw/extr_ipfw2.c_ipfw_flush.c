
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int rt ;
struct TYPE_5__ {scalar_t__ set; int flags; } ;
typedef TYPE_1__ ipfw_range_tlv ;
struct TYPE_6__ {scalar_t__ use_set; scalar_t__ do_pipe; int do_quiet; } ;


 int EX_UNAVAILABLE ;
 int IPFW_RCFLAG_ALL ;
 int IPFW_RCFLAG_SET ;
 int IP_FW_XDEL ;
 TYPE_4__ co ;
 scalar_t__ do_range_cmd (int ,TYPE_1__*) ;
 int dummynet_flush () ;
 int err (int ,char*) ;
 scalar_t__ feof (int ) ;
 int fflush (int ) ;
 char getc (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int printf (char*,...) ;
 int stdin ;
 int stdout ;
 int toupper (char) ;

void
ipfw_flush(int force)
{
 ipfw_range_tlv rt;

 if (!force && !co.do_quiet) {
  int c;

  printf("Are you sure? [yn] ");
  fflush(stdout);
  do {
   c = toupper(getc(stdin));
   while (c != '\n' && getc(stdin) != '\n')
    if (feof(stdin))
     return;
  } while (c != 'Y' && c != 'N');
  printf("\n");
  if (c == 'N')
   return;
 }
 if (co.do_pipe) {
  dummynet_flush();
  return;
 }

 memset(&rt, 0, sizeof(rt));
 if (co.use_set != 0) {
  rt.set = co.use_set - 1;
  rt.flags = IPFW_RCFLAG_SET;
 } else
  rt.flags = IPFW_RCFLAG_ALL;
 if (do_range_cmd(IP_FW_XDEL, &rt) != 0)
   err(EX_UNAVAILABLE, "setsockopt(IP_FW_XDEL)");
 if (!co.do_quiet)
  printf("Flushed all %s.\n", co.do_pipe ? "pipes" : "rules");
}
