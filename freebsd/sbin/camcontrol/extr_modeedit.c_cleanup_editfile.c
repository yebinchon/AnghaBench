
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * edit_file ;
 int edit_path ;
 scalar_t__ fclose (int *) ;
 scalar_t__ unlink (int ) ;
 int warn (char*,int ) ;

__attribute__((used)) static void
cleanup_editfile(void)
{
 if (edit_file == ((void*)0))
  return;
 if (fclose(edit_file) != 0 || unlink(edit_path) != 0)
  warn("%s", edit_path);
 edit_file = ((void*)0);
}
