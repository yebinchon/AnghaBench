
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pzUsageTitle; int pzCopyright; int pzFullVersion; } ;
typedef TYPE_1__ tOptions ;
typedef int FILE ;


 int emit_first_line (int *,int ,int ,int ) ;

__attribute__((used)) static void
emit_simple_ver(tOptions * o, FILE * fp)
{
    emit_first_line(fp, o->pzFullVersion, o->pzCopyright, o->pzUsageTitle);
}
