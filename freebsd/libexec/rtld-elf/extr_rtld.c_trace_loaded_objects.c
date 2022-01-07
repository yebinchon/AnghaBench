
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {char const* path; } ;
struct TYPE_12__ {int sod_minor; int sod_major; } ;
struct TYPE_11__ {int name; TYPE_1__* obj; struct TYPE_11__* next; } ;
struct TYPE_10__ {char* strtab; TYPE_3__* needed; int path; scalar_t__ marker; } ;
struct TYPE_9__ {int traced; char* path; int mapbase; } ;
typedef TYPE_2__ Obj_Entry ;
typedef TYPE_3__ Needed_Entry ;


 TYPE_2__* TAILQ_NEXT (TYPE_2__*,int ) ;
 int _LD (char*) ;
 char* getenv (int ) ;
 int next ;
 TYPE_6__* obj_main ;
 int rtld_printf (char*,int ) ;
 int rtld_putchar (int) ;
 int rtld_putstr (char const*) ;
 TYPE_5__* sodp ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static void
trace_loaded_objects(Obj_Entry *obj)
{
    const char *fmt1, *fmt2, *fmt, *main_local, *list_containers;
    int c;

    if ((main_local = getenv(_LD("TRACE_LOADED_OBJECTS_PROGNAME"))) == ((void*)0))
 main_local = "";

    if ((fmt1 = getenv(_LD("TRACE_LOADED_OBJECTS_FMT1"))) == ((void*)0))
 fmt1 = "\t%o => %p (%x)\n";

    if ((fmt2 = getenv(_LD("TRACE_LOADED_OBJECTS_FMT2"))) == ((void*)0))
 fmt2 = "\t%o (%x)\n";

    list_containers = getenv(_LD("TRACE_LOADED_OBJECTS_ALL"));

    for (; obj != ((void*)0); obj = TAILQ_NEXT(obj, next)) {
 Needed_Entry *needed;
 const char *name, *path;
 bool is_lib;

 if (obj->marker)
     continue;
 if (list_containers && obj->needed != ((void*)0))
     rtld_printf("%s:\n", obj->path);
 for (needed = obj->needed; needed; needed = needed->next) {
     if (needed->obj != ((void*)0)) {
  if (needed->obj->traced && !list_containers)
      continue;
  needed->obj->traced = 1;
  path = needed->obj->path;
     } else
  path = "not found";

     name = obj->strtab + needed->name;
     is_lib = strncmp(name, "lib", 3) == 0;

     fmt = is_lib ? fmt1 : fmt2;
     while ((c = *fmt++) != '\0') {
  switch (c) {
  default:
      rtld_putchar(c);
      continue;
  case '\\':
      switch (c = *fmt) {
      case '\0':
   continue;
      case 'n':
   rtld_putchar('\n');
   break;
      case 't':
   rtld_putchar('\t');
   break;
      }
      break;
  case '%':
      switch (c = *fmt) {
      case '\0':
   continue;
      case '%':
      default:
   rtld_putchar(c);
   break;
      case 'A':
   rtld_putstr(main_local);
   break;
      case 'a':
   rtld_putstr(obj_main->path);
   break;
      case 'o':
   rtld_putstr(name);
   break;
      case 'p':
   rtld_putstr(path);
   break;
      case 'x':
   rtld_printf("%p", needed->obj ? needed->obj->mapbase :
     0);
   break;
      }
      break;
  }
  ++fmt;
     }
 }
    }
}
