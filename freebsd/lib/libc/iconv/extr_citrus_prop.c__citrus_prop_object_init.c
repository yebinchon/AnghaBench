
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int _citrus_prop_type_t ;
struct TYPE_3__ {int u; int type; } ;
typedef TYPE_1__ _citrus_prop_object_t ;


 int memset (int *,int ,int) ;

__attribute__((used)) static __inline void
_citrus_prop_object_init(_citrus_prop_object_t *obj, _citrus_prop_type_t type)
{

 obj->type = type;
 memset(&obj->u, 0, sizeof(obj->u));
}
