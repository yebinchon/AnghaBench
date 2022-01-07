
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z_interpose; } ;
typedef TYPE_1__ Obj_Entry ;


 int LD_UTRACE (int ,int *,int *,int ,int ,int *) ;
 int UTRACE_PRELOAD_FINISHED ;
 char* ld_preload ;
 TYPE_1__* load_object (char*,int,int *,int ) ;
 size_t strcspn (char*,char const*) ;
 int strspn (char*,char const*) ;

__attribute__((used)) static int
load_preload_objects(void)
{
    char *p = ld_preload;
    Obj_Entry *obj;
    static const char delim[] = " \t:;";

    if (p == ((void*)0))
 return 0;

    p += strspn(p, delim);
    while (*p != '\0') {
 size_t len = strcspn(p, delim);
 char savech;

 savech = p[len];
 p[len] = '\0';
 obj = load_object(p, -1, ((void*)0), 0);
 if (obj == ((void*)0))
     return -1;
 obj->z_interpose = 1;
 p[len] = savech;
 p += len;
 p += strspn(p, delim);
    }
    LD_UTRACE(UTRACE_PRELOAD_FINISHED, ((void*)0), ((void*)0), 0, 0, ((void*)0));
    return 0;
}
