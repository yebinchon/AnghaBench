
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CheckIpfwRulenum (unsigned int) ;
 int LibAliasSetFWBase (int ,unsigned int,unsigned int) ;
 int LibAliasSetMode (int ,int ,int ) ;
 int PKT_ALIAS_PUNCH_FW ;
 int errx (int,char*) ;
 int mla ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void
SetupPunchFW(const char *strValue)
{
 unsigned int base, num;

 if (sscanf(strValue, "%u:%u", &base, &num) != 2)
  errx(1, "punch_fw: basenumber:count parameter required");

 if (CheckIpfwRulenum(base + num - 1) == -1)
  errx(1, "punch_fw: basenumber:count parameter should fit "
   "the maximum allowed rule numbers");

 LibAliasSetFWBase(mla, base, num);
 (void)LibAliasSetMode(mla, PKT_ALIAS_PUNCH_FW, PKT_ALIAS_PUNCH_FW);
}
