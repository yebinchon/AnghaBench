
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct file* utf16name; } ;


 int free (struct file*) ;

__attribute__((used)) static void
file_free(struct file *file)
{
 free(file->utf16name);
 free(file);
}
