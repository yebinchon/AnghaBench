
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int compressionType; } ;
typedef TYPE_1__ FIO_prefs_t ;
typedef int FIO_compressionType_t ;



void FIO_setCompressionType(FIO_prefs_t* const prefs, FIO_compressionType_t compressionType) { prefs->compressionType = compressionType; }
