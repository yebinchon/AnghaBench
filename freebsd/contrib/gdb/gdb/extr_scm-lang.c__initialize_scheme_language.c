
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 int TARGET_CHAR_BIT ;
 int TARGET_LONG_BIT ;
 int TYPE_CODE_INT ;
 int add_language (int *) ;
 int builtin_type_scm ;
 int init_type (int ,int,int ,char*,struct objfile*) ;
 int scm_language_defn ;

void
_initialize_scheme_language (void)
{
  add_language (&scm_language_defn);
  builtin_type_scm = init_type (TYPE_CODE_INT,
    TARGET_LONG_BIT / TARGET_CHAR_BIT,
    0, "SCM", (struct objfile *) ((void*)0));
}
