
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_5__ {int c_flags; size_t c_path_cur; TYPE_1__* c_path; } ;
typedef TYPE_2__ csv_private_t ;
struct TYPE_4__ {char const* pf_name; } ;


 int CF_HAS_PATH ;

__attribute__((used)) static const char *
csv_path_top (csv_private_t *csv, ssize_t delta)
{
    if (!(csv->c_flags & CF_HAS_PATH) || csv->c_path == ((void*)0))
 return ((void*)0);

    ssize_t cur = csv->c_path_cur + delta;

    if (cur < 0)
 return ((void*)0);

    return csv->c_path[cur].pf_name;
}
