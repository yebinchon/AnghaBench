
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_arg {unsigned long norm; char* dst; } ;
struct _region {int dummy; } ;
struct _lookup {int dummy; } ;
typedef int pivot_min ;


 int CS_PIVOT ;
 int ENOENT ;
 int PATH_MAX ;
 unsigned long ULONG_MAX ;
 int _LOOKUP_CASE_IGNORE ;
 int _lookup_seq_close (struct _lookup*) ;
 int _lookup_seq_lookup (struct _lookup*,char const*,struct _region*) ;
 int _lookup_seq_next (struct _lookup*,int *,struct _region*) ;
 int _lookup_seq_open (struct _lookup**,int ,int ) ;
 int find_dst (struct parse_arg*,char const*) ;
 int parse_line (struct parse_arg*,struct _region*) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static int
find_best_pivot_lookup(const char *src, const char *dst, char *pivot,
    size_t pvlen, unsigned long *rnorm)
{
 struct _lookup *cl;
 struct _region data;
 struct parse_arg pa;
 char pivot_min[PATH_MAX];
 unsigned long norm_min;
 int ret;

 ret = _lookup_seq_open(&cl, CS_PIVOT, _LOOKUP_CASE_IGNORE);
 if (ret)
  return (ret);

 norm_min = ULONG_MAX;


 ret = _lookup_seq_lookup(cl, src, &data);
 while (ret == 0) {
  ret = parse_line(&pa, &data);
  if (ret)
   break;
  ret = find_dst(&pa, dst);
  if (ret)
   break;
  if (pa.norm < norm_min) {
   norm_min = pa.norm;
   strlcpy(pivot_min, pa.dst, sizeof(pivot_min));
  }
  ret = _lookup_seq_next(cl, ((void*)0), &data);
 }
 _lookup_seq_close(cl);

 if (ret != ENOENT)
  return (ret);
 if (norm_min == ULONG_MAX)
  return (ENOENT);
 strlcpy(pivot, pivot_min, pvlen);
 if (rnorm)
  *rnorm = norm_min;

 return (0);
}
