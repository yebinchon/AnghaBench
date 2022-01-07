
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_name_constraints ;


 int memset (int *,int ,int) ;

__attribute__((used)) static int
init_name_constraints(hx509_name_constraints *nc)
{
    memset(nc, 0, sizeof(*nc));
    return 0;
}
