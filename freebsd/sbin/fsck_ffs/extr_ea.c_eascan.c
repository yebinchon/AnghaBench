
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef long u_int ;
typedef int u_char ;
struct ufs2_dinode {scalar_t__ di_extsize; int * di_extb; } ;
struct inodesc {scalar_t__ id_number; } ;
struct TYPE_3__ {scalar_t__ b_buf; } ;
struct bufarea {TYPE_1__ b_un; } ;
typedef int intmax_t ;
struct TYPE_4__ {long fs_fsize; long fs_bsize; } ;


 int BT_EXTATTR ;
 int DIRBLKSIZ ;
 int STOP ;
 struct bufarea* getdatablk (int ,long,int ) ;
 int printf (char*,...) ;
 TYPE_2__ sblock ;

int
eascan(struct inodesc *idesc, struct ufs2_dinode *dp)
{

 return (0);
}
