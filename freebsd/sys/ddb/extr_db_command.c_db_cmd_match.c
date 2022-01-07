
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {char* name; } ;


 int CMD_AMBIGUOUS ;
 int CMD_FOUND ;
 int CMD_UNIQUE ;

__attribute__((used)) static void
db_cmd_match(char *name, struct command *cmd, struct command **cmdp,
    int *resultp)
{
 char *lp, *rp;
 int c;

 lp = name;
 rp = cmd->name;
 while ((c = *lp) == *rp) {
  if (c == 0) {

   *cmdp = cmd;
   *resultp = CMD_UNIQUE;
   return;
  }
  lp++;
  rp++;
 }
 if (c == 0) {


  if (*resultp == CMD_FOUND) {
   *resultp = CMD_AMBIGUOUS;


  } else {
   *cmdp = cmd;
   *resultp = CMD_FOUND;
  }
 }
}
