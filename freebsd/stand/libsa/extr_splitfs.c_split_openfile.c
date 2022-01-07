
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct split_file {int curfd; size_t curfile; char** descsv; scalar_t__ file_pos; int * filesv; } ;


 int EIO ;
 scalar_t__ ENOENT ;
 int NTRIES ;
 int O_RDONLY ;
 scalar_t__ errno ;
 int getchar () ;
 int open (int ,int ) ;
 int printf (char*,char*) ;
 int putchar (char) ;

__attribute__((used)) static int
split_openfile(struct split_file *sf)
{
    int i;

    for (i = 0;; i++) {
 sf->curfd = open(sf->filesv[sf->curfile], O_RDONLY);
 if (sf->curfd >= 0)
     break;
 if ((sf->curfd == -1) && (errno != ENOENT))
     return (errno);
 if (i == NTRIES)
     return (EIO);
 printf("\nInsert disk labelled %s and press any key...",
     sf->descsv[sf->curfile]);
 getchar();
 putchar('\n');
    }
    sf->file_pos = 0;
    return (0);
}
