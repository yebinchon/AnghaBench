
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recvbuf {int dummy; } ;


 int read_peervars () ;
 int read_sysvars () ;
 scalar_t__ res_associd ;

__attribute__((used)) static void
read_variables(
 struct recvbuf *rbufp,
 int restrict_mask
 )
{
 if (res_associd)
  read_peervars();
 else
  read_sysvars();
}
