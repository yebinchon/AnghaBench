
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileinfo {int link; int * filename; int date; int size; int * minor; int * major; int group; int user; int n_link; int mode; int bsize; int inode; } ;
typedef int FILE ;


 int LS_INODE ;
 int LS_SIZE ;
 int sec_fprintf2 (int *,char*,...) ;

__attribute__((used)) static void
print_file(FILE *out,
    int flags,
    struct fileinfo *f,
    int max_inode,
    int max_bsize,
    int max_n_link,
    int max_user,
    int max_group,
    int max_size,
    int max_major,
    int max_minor,
    int max_date)
{
    if(f->filename == ((void*)0))
 return;

    if(flags & LS_INODE) {
 sec_fprintf2(out, "%*d", max_inode, f->inode);
 sec_fprintf2(out, "  ");
    }
    if(flags & LS_SIZE) {
 sec_fprintf2(out, "%*d", max_bsize, f->bsize);
 sec_fprintf2(out, "  ");
    }
    sec_fprintf2(out, "%s", f->mode);
    sec_fprintf2(out, "  ");
    sec_fprintf2(out, "%*d", max_n_link, f->n_link);
    sec_fprintf2(out, " ");
    sec_fprintf2(out, "%-*s", max_user, f->user);
    sec_fprintf2(out, "  ");
    sec_fprintf2(out, "%-*s", max_group, f->group);
    sec_fprintf2(out, "  ");
    if(f->major != ((void*)0) && f->minor != ((void*)0))
 sec_fprintf2(out, "%*s, %*s", max_major, f->major, max_minor, f->minor);
    else
 sec_fprintf2(out, "%*s", max_size, f->size);
    sec_fprintf2(out, " ");
    sec_fprintf2(out, "%*s", max_date, f->date);
    sec_fprintf2(out, " ");
    sec_fprintf2(out, "%s", f->filename);
    if(f->link)
 sec_fprintf2(out, " -> %s", f->link);
    sec_fprintf2(out, "\r\n");
}
