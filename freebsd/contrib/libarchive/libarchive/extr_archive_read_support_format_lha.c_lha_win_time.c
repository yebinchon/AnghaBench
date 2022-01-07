
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int time_t ;


 int EPOC_TIME ;

__attribute__((used)) static time_t
lha_win_time(uint64_t wintime, long *ns)
{


 if (wintime >= ARCHIVE_LITERAL_ULL(116444736000000000)) {
  wintime -= ARCHIVE_LITERAL_ULL(116444736000000000);
  if (ns != ((void*)0))
   *ns = (long)(wintime % 10000000) * 100;
  return (wintime / 10000000);
 } else {
  if (ns != ((void*)0))
   *ns = 0;
  return (0);
 }
}
