
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



char *
pr_type(register u_char t)
{
 static char *ttab[] = {
 "Echo Reply", "ICMP 1", "ICMP 2", "Dest Unreachable",
 "Source Quench", "Redirect", "ICMP 6", "ICMP 7",
 "Echo", "ICMP 9", "ICMP 10", "Time Exceeded",
 "Param Problem", "Timestamp", "Timestamp Reply", "Info Request",
 "Info Reply"
 };

 if (t > 16)
  return("OUT-OF-RANGE");

 return(ttab[t]);
}
