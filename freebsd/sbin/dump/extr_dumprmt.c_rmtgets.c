
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msg (char*,...) ;
 int rmtconnaborted (int ) ;
 char rmtgetb () ;

void
rmtgets(char *line, int len)
{
 char *cp = line;

 while (len > 1) {
  *cp = rmtgetb();
  if (*cp == '\n') {
   cp[1] = '\0';
   return;
  }
  cp++;
  len--;
 }
 *cp = '\0';
 msg("Protocol to remote tape server botched.\n");
 msg("(rmtgets got \"%s\").\n", line);
 rmtconnaborted(0);
}
