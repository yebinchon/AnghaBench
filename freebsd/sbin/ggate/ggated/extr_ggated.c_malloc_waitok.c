
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int g_gate_log (int ,char*,size_t) ;
 void* malloc (size_t) ;
 int sleep (int) ;

__attribute__((used)) static void *
malloc_waitok(size_t size)
{
 void *p;

 while ((p = malloc(size)) == ((void*)0)) {
  g_gate_log(LOG_DEBUG, "Cannot allocate %zu bytes.", size);
  sleep(1);
 }
 return (p);
}
