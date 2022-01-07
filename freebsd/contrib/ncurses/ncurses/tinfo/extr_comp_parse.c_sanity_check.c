
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TERMTYPE ;


 int FALSE ;
 int sanity_check2 (int *,int ) ;

__attribute__((used)) static void
sanity_check(TERMTYPE *tp)
{
    sanity_check2(tp, FALSE);
}
