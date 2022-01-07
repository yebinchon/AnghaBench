
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileinfo {int link; int filename; int date; int minor; int major; int size; int group; int user; } ;


 int free (int ) ;

__attribute__((used)) static void
free_fileinfo(struct fileinfo *f)
{
    free(f->user);
    free(f->group);
    free(f->size);
    free(f->major);
    free(f->minor);
    free(f->date);
    free(f->filename);
    free(f->link);
}
