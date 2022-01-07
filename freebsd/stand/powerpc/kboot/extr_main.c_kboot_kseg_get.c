
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_2__ {scalar_t__ memsz; scalar_t__ mem; scalar_t__ bufsz; scalar_t__ buf; } ;


 TYPE_1__* loaded_segments ;
 int nkexec_segments ;
 int printf (char*,int ,int ,int ,int ) ;

__attribute__((used)) static void
kboot_kseg_get(int *nseg, void **ptr)
{
 *nseg = nkexec_segments;
 *ptr = &loaded_segments[0];
}
