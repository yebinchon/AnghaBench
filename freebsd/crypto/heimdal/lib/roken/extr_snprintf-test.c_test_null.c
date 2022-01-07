
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rk_snprintf (int *,int ,char*) ;

__attribute__((used)) static int
test_null (void)
{
    return rk_snprintf (((void*)0), 0, "foo") != 3;
}
