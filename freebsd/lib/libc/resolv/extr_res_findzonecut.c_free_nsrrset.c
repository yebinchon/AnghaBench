
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rrset_ns ;
typedef int rr_ns ;


 int * HEAD (int ) ;
 int free_nsrr (int *,int *) ;

__attribute__((used)) static void
free_nsrrset(rrset_ns *nsrrsp) {
 rr_ns *nsrr;

 while ((nsrr = HEAD(*nsrrsp)) != ((void*)0))
  free_nsrr(nsrrsp, nsrr);
}
