
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int find_proper_scale(int expn, int n)
{
    int q_pw;

    q_pw = (expn > n) ? expn - 10 : 0;
    return q_pw;
}
