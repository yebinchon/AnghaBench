
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;


 int freehostent (struct hostent*) ;
 scalar_t__ use_ipnode_functions ;

__attribute__((used)) static void
__freehostent(struct hostent *he)
{


 if (use_ipnode_functions && he != ((void*)0))
  freehostent(he);
}
