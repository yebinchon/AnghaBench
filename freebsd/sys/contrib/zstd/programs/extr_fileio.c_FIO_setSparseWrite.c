
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int sparseFileSupport; } ;
typedef TYPE_1__ FIO_prefs_t ;



void FIO_setSparseWrite(FIO_prefs_t* const prefs, unsigned sparse) { prefs->sparseFileSupport = sparse; }
