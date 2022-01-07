
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabhash_testdata {int dummy; } ;


 int free (struct slabhash_testdata*) ;

__attribute__((used)) static void deldata(struct slabhash_testdata* d) {free(d);}
