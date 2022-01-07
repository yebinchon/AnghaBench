
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_object {int object_handle; } ;
struct TYPE_3__ {int num_objs; struct st_object** objs; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 int OBJECT_ID_MASK ;
 struct st_object* calloc (int,int) ;
 int free (struct st_object*) ;
 int random () ;
 struct st_object** realloc (struct st_object**,int) ;
 TYPE_2__ soft_token ;

__attribute__((used)) static struct st_object *
add_st_object(void)
{
    struct st_object *o, **objs;
    int i;

    o = calloc(1, sizeof(*o));
    if (o == ((void*)0))
 return ((void*)0);

    for (i = 0; i < soft_token.object.num_objs; i++) {
 if (soft_token.object.objs == ((void*)0)) {
     soft_token.object.objs[i] = o;
     break;
 }
    }
    if (i == soft_token.object.num_objs) {
 objs = realloc(soft_token.object.objs,
         (soft_token.object.num_objs + 1) * sizeof(soft_token.object.objs[0]));
 if (objs == ((void*)0)) {
     free(o);
     return ((void*)0);
 }
 soft_token.object.objs = objs;
 soft_token.object.objs[soft_token.object.num_objs++] = o;
    }
    soft_token.object.objs[i]->object_handle =
 (random() & (~OBJECT_ID_MASK)) | i;

    return o;
}
