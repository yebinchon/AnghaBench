
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 int DIP (int ,int ) ;





 int IFMT ;


 int checkactive () ;
 int curinode ;
 int curinum ;
 int di_mode ;
 int disk ;
 int printf (char*,int ,...) ;
 int printstat (char*,int ,int ) ;
 int prtblknos (int *,int ) ;

int
printactive(int doblocks)
{
    if (!checkactive())
 return 1;
    switch (DIP(curinode, di_mode) & IFMT) {
    case 132:
    case 129:
    case 134:
    case 133:
    case 130:
    case 128:
    case 131:
 if (doblocks)
     prtblknos(&disk, curinode);
 else
     printstat("current inode", curinum, curinode);
 break;
    case 0:
 printf("current inode %ju: unallocated inode\n", (uintmax_t)curinum);
 break;
    default:
 printf("current inode %ju: screwy itype 0%o (mode 0%o)?\n",
     (uintmax_t)curinum, DIP(curinode, di_mode) & IFMT,
     DIP(curinode, di_mode));
 break;
    }
    return 0;
}
