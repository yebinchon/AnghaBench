
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int miss (int ,int ) ;
 int path ;
 int root ;
 int spec (int *) ;
 int vwalk () ;

int
verify(FILE *fi)
{
 int rval;

 root = spec(fi);
 rval = vwalk();
 miss(root, path);
 return (rval);
}
