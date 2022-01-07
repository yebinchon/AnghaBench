
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PS_FST_UFLAG_CDIR ;
 int PS_FST_UFLAG_CTTY ;
 int PS_FST_UFLAG_JAIL ;
 int PS_FST_UFLAG_RDIR ;
 int PS_FST_UFLAG_TEXT ;
 int PS_FST_UFLAG_TRACE ;

__attribute__((used)) static int
kinfo_uflags2fst(int fd)
{

 switch (fd) {
 case 133:
  return (PS_FST_UFLAG_CTTY);
 case 132:
  return (PS_FST_UFLAG_CDIR);
 case 131:
  return (PS_FST_UFLAG_JAIL);
 case 129:
  return (PS_FST_UFLAG_TEXT);
 case 128:
  return (PS_FST_UFLAG_TRACE);
 case 130:
  return (PS_FST_UFLAG_RDIR);
 }
 return (0);
}
