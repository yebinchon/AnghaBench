
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef void* uint16_t ;
struct format_opts {int set; int new_set; scalar_t__ start_rule; void* end_rule; int flags; } ;
typedef int rt ;
typedef struct format_opts ipfw_range_tlv ;
struct TYPE_4__ {int set_mask; } ;
typedef TYPE_1__ ipfw_cfg_lheader ;
typedef int fo ;


 int EX_DATAERR ;
 int EX_OSERR ;
 int EX_USAGE ;
 scalar_t__ IPFW_DEFAULT_RULE ;
 int IPFW_RCFLAG_RANGE ;
 int IP_FW_SET_ENABLE ;
 int IP_FW_SET_MOVE ;
 int IP_FW_SET_SWAP ;
 int IP_FW_XMOVE ;
 int RESVD_SET ;
 scalar_t__ _substrcmp (char*,char*) ;
 void* atoi (char*) ;
 int co ;
 int do_range_cmd (int,struct format_opts*) ;
 int err (int ,char*,...) ;
 int errx (int ,char*,...) ;
 int free (TYPE_1__*) ;
 scalar_t__ ipfw_get_config (int *,struct format_opts*,TYPE_1__**,size_t*) ;
 scalar_t__ isdigit (char) ;
 int memset (struct format_opts*,int ,int) ;
 int printf (char*,...) ;
 int warn (char*) ;

void
ipfw_sets_handler(char *av[])
{
 ipfw_range_tlv rt;
 char *msg;
 size_t size;
 uint32_t masks[2];
 int i;
 uint16_t rulenum;
 uint8_t cmd;

 av++;
 memset(&rt, 0, sizeof(rt));

 if (av[0] == ((void*)0))
  errx(EX_USAGE, "set needs command");
 if (_substrcmp(*av, "show") == 0) {
  struct format_opts fo;
  ipfw_cfg_lheader *cfg;

  memset(&fo, 0, sizeof(fo));
  if (ipfw_get_config(&co, &fo, &cfg, &size) != 0)
   err(EX_OSERR, "requesting config failed");

  for (i = 0, msg = "disable"; i < RESVD_SET; i++)
   if ((cfg->set_mask & (1<<i)) == 0) {
    printf("%s %d", msg, i);
    msg = "";
   }
  msg = (cfg->set_mask != (uint32_t)-1) ? " enable" : "enable";
  for (i = 0; i < RESVD_SET; i++)
   if ((cfg->set_mask & (1<<i)) != 0) {
    printf("%s %d", msg, i);
    msg = "";
   }
  printf("\n");
  free(cfg);
 } else if (_substrcmp(*av, "swap") == 0) {
  av++;
  if ( av[0] == ((void*)0) || av[1] == ((void*)0) )
   errx(EX_USAGE, "set swap needs 2 set numbers\n");
  rt.set = atoi(av[0]);
  rt.new_set = atoi(av[1]);
  if (!isdigit(*(av[0])) || rt.set > RESVD_SET)
   errx(EX_DATAERR, "invalid set number %s\n", av[0]);
  if (!isdigit(*(av[1])) || rt.new_set > RESVD_SET)
   errx(EX_DATAERR, "invalid set number %s\n", av[1]);
  i = do_range_cmd(IP_FW_SET_SWAP, &rt);
 } else if (_substrcmp(*av, "move") == 0) {
  av++;
  if (av[0] && _substrcmp(*av, "rule") == 0) {
   rt.flags = IPFW_RCFLAG_RANGE;
   cmd = IP_FW_XMOVE;
   av++;
  } else
   cmd = IP_FW_SET_MOVE;
  if (av[0] == ((void*)0) || av[1] == ((void*)0) || av[2] == ((void*)0) ||
    av[3] != ((void*)0) || _substrcmp(av[1], "to") != 0)
   errx(EX_USAGE, "syntax: set move [rule] X to Y\n");
  rulenum = atoi(av[0]);
  rt.new_set = atoi(av[2]);
  if (cmd == IP_FW_XMOVE) {
   rt.start_rule = rulenum;
   rt.end_rule = rulenum;
  } else
   rt.set = rulenum;
  rt.new_set = atoi(av[2]);
  if (!isdigit(*(av[0])) || (cmd == 3 && rt.set > RESVD_SET) ||
   (cmd == 2 && rt.start_rule == IPFW_DEFAULT_RULE) )
   errx(EX_DATAERR, "invalid source number %s\n", av[0]);
  if (!isdigit(*(av[2])) || rt.new_set > RESVD_SET)
   errx(EX_DATAERR, "invalid dest. set %s\n", av[1]);
  i = do_range_cmd(cmd, &rt);
  if (i < 0)
   err(EX_OSERR, "failed to move %s",
       cmd == IP_FW_SET_MOVE ? "set": "rule");
 } else if (_substrcmp(*av, "disable") == 0 ||
     _substrcmp(*av, "enable") == 0 ) {
  int which = _substrcmp(*av, "enable") == 0 ? 1 : 0;

  av++;
  masks[0] = masks[1] = 0;

  while (av[0]) {
   if (isdigit(**av)) {
    i = atoi(*av);
    if (i < 0 || i > RESVD_SET)
     errx(EX_DATAERR,
         "invalid set number %d\n", i);
    masks[which] |= (1<<i);
   } else if (_substrcmp(*av, "disable") == 0)
    which = 0;
   else if (_substrcmp(*av, "enable") == 0)
    which = 1;
   else
    errx(EX_DATAERR,
     "invalid set command %s\n", *av);
   av++;
  }
  if ( (masks[0] & masks[1]) != 0 )
   errx(EX_DATAERR,
       "cannot enable and disable the same set\n");

  rt.set = masks[0];
  rt.new_set = masks[1];
  i = do_range_cmd(IP_FW_SET_ENABLE, &rt);
  if (i)
   warn("set enable/disable: setsockopt(IP_FW_SET_ENABLE)");
 } else
  errx(EX_USAGE, "invalid set command %s\n", *av);
}
