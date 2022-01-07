
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t rs_count; } ;


 int _rs_forkdetect () ;
 int _rs_stir () ;
 TYPE_1__* rs ;

__attribute__((used)) static inline void
_rs_stir_if_needed(size_t len)
{
 _rs_forkdetect();
 if (!rs || rs->rs_count <= len)
  _rs_stir();
 if (rs->rs_count <= len)
  rs->rs_count = 0;
 else
  rs->rs_count -= len;
}
