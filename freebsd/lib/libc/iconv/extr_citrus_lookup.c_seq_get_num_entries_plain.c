
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_lookup {int dummy; } ;


 scalar_t__ seq_next_plain (struct _citrus_lookup*,int *,int *) ;

__attribute__((used)) static int
seq_get_num_entries_plain(struct _citrus_lookup *cl)
{
 int num;

 num = 0;
 while (seq_next_plain(cl, ((void*)0), ((void*)0)) == 0)
  num++;

 return (num);
}
