
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* name; } ;
struct TYPE_7__ {char* s; size_t length; } ;
struct tree {size_t dirname_length; char* basename; TYPE_1__ restore_time; TYPE_2__ path; } ;


 int archive_strappend_char (TYPE_2__*,char) ;
 int archive_string_ensure (TYPE_2__*,size_t) ;
 int archive_strlen (TYPE_2__*) ;
 int archive_strncat (TYPE_2__*,char const*,size_t) ;

__attribute__((used)) static void
tree_append(struct tree *t, const char *name, size_t name_length)
{
 size_t size_needed;

 t->path.s[t->dirname_length] = '\0';
 t->path.length = t->dirname_length;

 while (name_length > 1 && name[name_length - 1] == '/')
  name_length--;


 size_needed = name_length + t->dirname_length + 2;
 archive_string_ensure(&t->path, size_needed);

 if (t->dirname_length > 0 && t->path.s[archive_strlen(&t->path)-1] != '/')
  archive_strappend_char(&t->path, '/');
 t->basename = t->path.s + archive_strlen(&t->path);
 archive_strncat(&t->path, name, name_length);
 t->restore_time.name = t->basename;
}
