
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* state_name (unsigned int) ;
 int strcat (char*,char*) ;

__attribute__((used)) static char *
write_all_states(char *buff, unsigned int states)
{
 unsigned int lowbit;

 buff[0] = '\0';


 while ((lowbit = states & (1 + ~states)) != 0) {
  states &= ~lowbit;
  strcat(buff, state_name(lowbit));
  if (states != 0)
   strcat(buff, "/");
 }
 return buff;
}
