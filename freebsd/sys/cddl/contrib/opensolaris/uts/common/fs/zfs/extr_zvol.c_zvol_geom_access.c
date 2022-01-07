
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int error; int * private; int name; } ;


 int FREAD ;
 int FWRITE ;
 int KASSERT (int,char*) ;
 int g_topology_assert () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int zvol_close (struct g_provider*,int,int) ;
 int zvol_open (struct g_provider*,int,int) ;

__attribute__((used)) static int
zvol_geom_access(struct g_provider *pp, int acr, int acw, int ace)
{
 int count, error, flags;

 g_topology_assert();





 KASSERT((acr >= 0 && acw >= 0 && ace >= 0) ||
     (acr <= 0 && acw <= 0 && ace <= 0),
     ("Unsupported access request to %s (acr=%d, acw=%d, ace=%d).",
     pp->name, acr, acw, ace));

 if (pp->private == ((void*)0)) {
  if (acr <= 0 && acw <= 0 && ace <= 0)
   return (0);
  return (pp->error);
 }
 count = acr + acw + ace;
 if (count == 0)
  return (0);

 flags = 0;
 if (acr != 0 || ace != 0)
  flags |= FREAD;
 if (acw != 0)
  flags |= FWRITE;

 g_topology_unlock();
 if (count > 0)
  error = zvol_open(pp, flags, count);
 else
  error = zvol_close(pp, flags, -count);
 g_topology_lock();
 return (error);
}
