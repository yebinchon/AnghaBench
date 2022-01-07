
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int * val; } ;
typedef TYPE_1__ TESTSeqOf ;
typedef int TESTInteger ;


 int add_TESTSeqOf (TYPE_1__*,int *) ;
 int free_TESTSeqOf (TYPE_1__*) ;
 int printf (char*) ;
 int remove_TESTSeqOf (TYPE_1__*,int) ;

__attribute__((used)) static int
check_seq(void)
{
    TESTSeqOf seq;
    TESTInteger i;
    int ret;

    seq.val = ((void*)0);
    seq.len = 0;

    ret = add_TESTSeqOf(&seq, &i);
    if (ret) { printf("failed adding\n"); goto out; }
    ret = add_TESTSeqOf(&seq, &i);
    if (ret) { printf("failed adding\n"); goto out; }
    ret = add_TESTSeqOf(&seq, &i);
    if (ret) { printf("failed adding\n"); goto out; }
    ret = add_TESTSeqOf(&seq, &i);
    if (ret) { printf("failed adding\n"); goto out; }

    ret = remove_TESTSeqOf(&seq, seq.len - 1);
    if (ret) { printf("failed removing\n"); goto out; }
    ret = remove_TESTSeqOf(&seq, 2);
    if (ret) { printf("failed removing\n"); goto out; }
    ret = remove_TESTSeqOf(&seq, 0);
    if (ret) { printf("failed removing\n"); goto out; }
    ret = remove_TESTSeqOf(&seq, 0);
    if (ret) { printf("failed removing\n"); goto out; }
    ret = remove_TESTSeqOf(&seq, 0);
    if (ret == 0) {
 printf("can remove from empty list");
 return 1;
    }

    if (seq.len != 0) {
 printf("seq not empty!");
 return 1;
    }
    free_TESTSeqOf(&seq);
    ret = 0;

out:

    return ret;
}
