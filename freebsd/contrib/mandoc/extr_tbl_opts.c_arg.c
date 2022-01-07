
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char tab; char decimal; } ;
struct tbl_node {TYPE_1__ opts; } ;
struct TYPE_4__ {int name; } ;






 int MANDOCERR_TBLOPT_ARGSZ ;
 int MANDOCERR_TBLOPT_EQN ;
 int MANDOCERR_TBLOPT_NOARG ;
 int abort () ;
 TYPE_2__* keys ;
 int mandoc_msg (int ,int,int,char*,int,...) ;

__attribute__((used)) static void
arg(struct tbl_node *tbl, int ln, const char *p, int *pos, int key)
{
 int len, want;

 while (p[*pos] == ' ' || p[*pos] == '\t')
  (*pos)++;



 len = 0;
 if (p[*pos] == '(') {
  (*pos)++;
  while (p[*pos + len] != ')')
   len++;
 }

 switch (key) {
 case 131:
  mandoc_msg(MANDOCERR_TBLOPT_EQN,
      ln, *pos, "%.*s", len, p + *pos);
  want = 2;
  break;
 case 128:
  want = 1;
  if (len == want)
   tbl->opts.tab = p[*pos];
  break;
 case 129:
  want = 0;
  break;
 case 130:
  want = 1;
  if (len == want)
   tbl->opts.decimal = p[*pos];
  break;
 default:
  abort();
 }

 if (len == 0)
  mandoc_msg(MANDOCERR_TBLOPT_NOARG, ln, *pos,
      "%s", keys[key].name);
 else if (want && len != want)
  mandoc_msg(MANDOCERR_TBLOPT_ARGSZ, ln, *pos,
      "%s want %d have %d", keys[key].name, want, len);

 *pos += len;
 if (p[*pos] == ')')
  (*pos)++;
}
