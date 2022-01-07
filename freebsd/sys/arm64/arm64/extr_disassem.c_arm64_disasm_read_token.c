
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct arm64_insn {TYPE_1__* tokens; } ;
struct TYPE_2__ {int pos; int len; int name; } ;


 int ARM64_MAX_TOKEN_CNT ;
 int EINVAL ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int
arm64_disasm_read_token(struct arm64_insn *insn, u_int opcode,
    const char *token, int *val)
{
 int i;

 for (i = 0; i < ARM64_MAX_TOKEN_CNT; i++) {
  if (strcmp(insn->tokens[i].name, token) == 0) {
   *val = (opcode >> insn->tokens[i].pos &
       ((1 << insn->tokens[i].len) - 1));
   return (0);
  }
 }

 return (EINVAL);
}
