
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfcs_onoffline (void*,int ) ;

__attribute__((used)) static void
cfcs_offline(void *arg)
{
 cfcs_onoffline(arg, 0);
}
