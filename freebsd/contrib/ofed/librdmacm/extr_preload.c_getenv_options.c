
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* atoi (char*) ;
 void* fork_support ;
 char* getenv (char*) ;
 void* rq_size ;
 void* sq_inline ;
 void* sq_size ;

__attribute__((used)) static void getenv_options(void)
{
 char *var;

 var = getenv("RS_SQ_SIZE");
 if (var)
  sq_size = atoi(var);

 var = getenv("RS_RQ_SIZE");
 if (var)
  rq_size = atoi(var);

 var = getenv("RS_INLINE");
 if (var)
  sq_inline = atoi(var);

 var = getenv("RDMAV_FORK_SAFE");
 if (var)
  fork_support = atoi(var);
}
