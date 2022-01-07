
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int auth_moremem (int) ;
 int auth_resize_hashtable () ;
 int authnumfreekeys ;
 int authnumkeys ;

void
auth_prealloc_symkeys(
 int keycount
 )
{
 int allocated;
 int additional;

 allocated = authnumkeys + authnumfreekeys;
 additional = keycount - allocated;
 if (additional > 0)
  auth_moremem(additional);
 auth_resize_hashtable();
}
