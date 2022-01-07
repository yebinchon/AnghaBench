
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ OABBREV ;


 int STRCMP (int ,int ) ;

__attribute__((used)) static int
opts_abbcmp(
 const void *a,
 const void *b)
{
 return(STRCMP(((OABBREV *)a)->name, ((OABBREV *)b)->name));
}
