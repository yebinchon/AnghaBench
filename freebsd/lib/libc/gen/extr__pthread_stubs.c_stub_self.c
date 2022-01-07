
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 struct pthread main_thread ;

__attribute__((used)) static struct pthread *
stub_self(void)
{
 return (&main_thread);
}
