
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
struct cpstack {int dummy; } ;


 char* cppop (struct cpstack**) ;
 int cppush (struct cpstack**,int *) ;
 int delete_variable (struct cpstack**,struct varobj*,int) ;
 int warning (char*,int) ;
 char** xmalloc (int) ;

int
varobj_delete (struct varobj *var, char ***dellist, int only_children)
{
  int delcount;
  int mycount;
  struct cpstack *result = ((void*)0);
  char **cp;


  cppush (&result, ((void*)0));

  if (only_children)

    delcount = delete_variable (&result, var, 1 );
  else

    delcount = delete_variable (&result, var, 0 );


  if (dellist != ((void*)0))
    {
      *dellist = xmalloc ((delcount + 1) * sizeof (char *));

      cp = *dellist;
      mycount = delcount;
      *cp = cppop (&result);
      while ((*cp != ((void*)0)) && (mycount > 0))
 {
   mycount--;
   cp++;
   *cp = cppop (&result);
 }

      if (mycount || (*cp != ((void*)0)))
 warning ("varobj_delete: assertion failed - mycount(=%d) <> 0",
   mycount);
    }

  return delcount;
}
