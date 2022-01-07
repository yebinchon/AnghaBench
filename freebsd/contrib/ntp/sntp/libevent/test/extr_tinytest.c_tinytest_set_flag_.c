
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testgroup_t {char* prefix; struct testcase_t* cases; } ;
struct testcase_t {int flags; scalar_t__ name; } ;
typedef int fullname ;


 int LONGEST_TEST_NAME ;
 int TT_OFF_BY_DEFAULT ;
 int TT_SKIP ;
 int printf (char*,char*) ;
 int puts (char*) ;
 int snprintf (char*,int,char*,char*,scalar_t__) ;
 int strncmp (char*,char const*,size_t) ;
 char const* strstr (char const*,char*) ;

int
tinytest_set_flag_(struct testgroup_t *groups, const char *arg, int set, unsigned long flag)
{
 int i, j;
 size_t length = LONGEST_TEST_NAME;
 char fullname[LONGEST_TEST_NAME];
 int found=0;
 if (strstr(arg, ".."))
  length = strstr(arg,"..")-arg;
 for (i=0; groups[i].prefix; ++i) {
  for (j=0; groups[i].cases[j].name; ++j) {
   struct testcase_t *testcase = &groups[i].cases[j];
   snprintf(fullname, sizeof(fullname), "%s%s",
     groups[i].prefix, testcase->name);
   if (!flag) {
    printf("    %s", fullname);
    if (testcase->flags & TT_OFF_BY_DEFAULT)
     puts("   (Off by default)");
    else if (testcase->flags & TT_SKIP)
     puts("  (DISABLED)");
    else
     puts("");
   }
   if (!strncmp(fullname, arg, length)) {
    if (set)
     testcase->flags |= flag;
    else
     testcase->flags &= ~flag;
    ++found;
   }
  }
 }
 return found;
}
