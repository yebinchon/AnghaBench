
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union dinode {int dummy; } dinode ;
typedef scalar_t__ ino_t ;


 scalar_t__ DIP (union dinode*,int ) ;
 int DIP_SET (union dinode*,int ,scalar_t__) ;
 int di_nlink ;
 int freeino (scalar_t__) ;
 union dinode* ginode (scalar_t__) ;
 int inodirty (union dinode*) ;

__attribute__((used)) static void
freedir(ino_t ino, ino_t parent)
{
 union dinode *dp;

 if (ino != parent) {
  dp = ginode(parent);
  DIP_SET(dp, di_nlink, DIP(dp, di_nlink) - 1);
  inodirty(dp);
 }
 freeino(ino);
}
