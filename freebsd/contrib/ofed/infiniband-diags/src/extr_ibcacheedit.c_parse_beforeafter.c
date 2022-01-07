
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int fprintf (int ,char*,char*) ;
 int optarg ;
 int stderr ;
 char* strchr (int ,char) ;
 int strtoull (char*,int ,int ) ;

__attribute__((used)) static int parse_beforeafter(char *arg, uint64_t *before, uint64_t *after)
{
 char *ptr;
 char *before_str;
 char *after_str;

 ptr = strchr(optarg, ':');
 if (!ptr || !(*(ptr + 1))) {
  fprintf(stderr, "invalid input '%s'\n", arg);
  return -1;
 }
 (*ptr) = '\0';
 before_str = arg;
 after_str = ptr + 1;

 (*before) = strtoull(before_str, 0, 0);
 (*after) = strtoull(after_str, 0, 0);
 return 0;
}
