
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct descr {int __ss; struct sockaddr* sa; } ;



__attribute__((used)) static void
reinit_descrs (struct descr *d, int n)
{
    int i;

    for (i = 0; i < n; ++i)
 d[i].sa = (struct sockaddr *)&d[i].__ss;
}
