
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_arg {scalar_t__ norm; int dst; } ;
struct _region {int dummy; } ;
struct _lookup {int dummy; } ;


 int CS_PIVOT ;
 int _LOOKUP_CASE_IGNORE ;
 int _lookup_seq_close (struct _lookup*) ;
 int _lookup_seq_lookup (struct _lookup*,int ,struct _region*) ;
 int _lookup_seq_next (struct _lookup*,int *,struct _region*) ;
 int _lookup_seq_open (struct _lookup**,int ,int ) ;
 int parse_line (struct parse_arg*,struct _region*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
find_dst(struct parse_arg *pasrc, const char *dst)
{
 struct _lookup *cl;
 struct parse_arg padst;
 struct _region data;
 int ret;

 ret = _lookup_seq_open(&cl, CS_PIVOT, _LOOKUP_CASE_IGNORE);
 if (ret)
  return (ret);

 ret = _lookup_seq_lookup(cl, pasrc->dst, &data);
 while (ret == 0) {
  ret = parse_line(&padst, &data);
  if (ret)
   break;
  if (strcmp(dst, padst.dst) == 0) {
   pasrc->norm += padst.norm;
   break;
  }
  ret = _lookup_seq_next(cl, ((void*)0), &data);
 }
 _lookup_seq_close(cl);

 return (ret);
}
