
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int cnt; scalar_t__* p; } ;
typedef TYPE_1__ ib_dr_path_t ;



__attribute__((used)) static int extend_dpath(ib_dr_path_t * path, int nextport)
{
 if (path->cnt + 2 >= sizeof(path->p))
  return -1;
 ++path->cnt;
 path->p[path->cnt] = (uint8_t) nextport;
 return path->cnt;
}
