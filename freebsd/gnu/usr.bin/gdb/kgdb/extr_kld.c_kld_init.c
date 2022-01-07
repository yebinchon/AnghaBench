
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RETURN_MASK_ALL ;
 int catch_errors (int ,int *,int *,int ) ;
 int load_klds_stub ;

void
kld_init (void)
{

 catch_errors(load_klds_stub, ((void*)0), ((void*)0), RETURN_MASK_ALL);
}
