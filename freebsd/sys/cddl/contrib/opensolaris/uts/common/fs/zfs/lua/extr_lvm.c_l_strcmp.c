
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t len; } ;
struct TYPE_7__ {TYPE_1__ tsv; } ;
typedef TYPE_2__ TString ;


 char* getstr (TYPE_2__ const*) ;
 int strcoll (char const*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int l_strcmp (const TString *ls, const TString *rs) {
  const char *l = getstr(ls);
  size_t ll = ls->tsv.len;
  const char *r = getstr(rs);
  size_t lr = rs->tsv.len;
  for (;;) {
    int temp = strcoll(l, r);
    if (temp != 0) return temp;
    else {
      size_t len = strlen(l);
      if (len == lr)
        return (len == ll) ? 0 : 1;
      else if (len == ll)
        return -1;

      len++;
      l += len; ll -= len; r += len; lr -= len;
    }
  }
}
