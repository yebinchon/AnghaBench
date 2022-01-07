
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * lruhash_markdelfunc_type ;


 int rrset_markdel ;
 int subnet_markdel ;

int
fptr_whitelist_hash_markdelfunc(lruhash_markdelfunc_type fptr)
{
 if(fptr == ((void*)0)) return 1;
 else if(fptr == &rrset_markdel) return 1;



 return 0;
}
