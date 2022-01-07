
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int NameFilter; } ;


 TYPE_1__ UnityFixture ;
 int selected (int ,char const*) ;

__attribute__((used)) static int testSelected(const char* test)
{
    return selected(UnityFixture.NameFilter, test);
}
