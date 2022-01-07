
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strerror (int) ;

char *
pfr_strerror(int errnum)
{
 switch (errnum) {
 case 128:
  return "Table does not exist";
 case 129:
  return "Anchor or Ruleset does not exist";
 default:
  return strerror(errnum);
 }
}
