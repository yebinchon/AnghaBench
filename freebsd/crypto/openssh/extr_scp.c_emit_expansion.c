
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ append (char*,char***,size_t*) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int
emit_expansion(const char *pattern, int brace_start, int brace_end,
    int sel_start, int sel_end, char ***patternsp, size_t *npatternsp)
{
 char *cp;
 int o = 0, tail_len = strlen(pattern + brace_end + 1);

 if ((cp = malloc(brace_start + (sel_end - sel_start) +
     tail_len + 1)) == ((void*)0))
  return -1;


 if (brace_start > 0) {
  memcpy(cp, pattern, brace_start);
  o = brace_start;
 }

 if (sel_end - sel_start > 0) {
  memcpy(cp + o, pattern + sel_start,
      sel_end - sel_start);
  o += sel_end - sel_start;
 }

 if (tail_len > 0) {
  memcpy(cp + o, pattern + brace_end + 1, tail_len);
  o += tail_len;
 }
 cp[o] = '\0';
 if (append(cp, patternsp, npatternsp) != 0) {
  free(cp);
  return -1;
 }
 return 0;
}
