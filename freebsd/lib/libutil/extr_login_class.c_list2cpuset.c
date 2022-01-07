
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset_t ;


 int CPU_SET (int,int *) ;
 int CPU_SETSIZE ;
 int EXIT_FAILURE ;
 int atoi (char const*) ;
 int errx (int ,char*,int) ;
 scalar_t__ isdigit (char const) ;

__attribute__((used)) static int
list2cpuset(const char *list, cpuset_t *mask)
{
 enum { NONE, NUM, DASH } state;
 int lastnum;
 int curnum;
 const char *l;

 state = NONE;
 curnum = lastnum = 0;
 for (l = list; *l != '\0';) {
  if (isdigit(*l)) {
   curnum = atoi(l);
   if (curnum > CPU_SETSIZE)
    errx(EXIT_FAILURE,
        "Only %d cpus supported", CPU_SETSIZE);
   while (isdigit(*l))
    l++;
   switch (state) {
   case NONE:
    lastnum = curnum;
    state = NUM;
    break;
   case DASH:
    for (; lastnum <= curnum; lastnum++)
     CPU_SET(lastnum, mask);
    state = NONE;
    break;
   case NUM:
   default:
    return (0);
   }
   continue;
  }
  switch (*l) {
  case ',':
   switch (state) {
   case NONE:
    break;
   case NUM:
    CPU_SET(curnum, mask);
    state = NONE;
    break;
   case DASH:
    return (0);
    break;
   }
   break;
  case '-':
   if (state != NUM)
    return (0);
   state = DASH;
   break;
  default:
   return (0);
  }
  l++;
 }
 switch (state) {
  case NONE:
   break;
  case NUM:
   CPU_SET(curnum, mask);
   break;
  case DASH:
   return (0);
 }
 return (1);
}
