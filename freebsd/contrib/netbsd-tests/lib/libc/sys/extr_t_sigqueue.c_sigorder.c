
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGRTMIN ;
 int asc ;
 int memcpy (int*,int const*,size_t) ;
 int qsort (int*,size_t,int,int ) ;

__attribute__((used)) static size_t
sigorder(int *ordered, const int *tosend, size_t len)
{
 memcpy(ordered, tosend, len * sizeof(*tosend));
 qsort(ordered, len, sizeof(*ordered), asc);
 if (len == 1)
  return len;
 size_t i, j;
 for (i = 0, j = 0; i < len - 1; i++) {
  if (ordered[i] >= SIGRTMIN)
   continue;
  if (j == 0)
   j = i + 1;
  while (ordered[i] == ordered[j] && j < len)
   j++;
  if (j == len)
   break;
  ordered[i + 1] = ordered[j];
 }
 return i + 1;

}
