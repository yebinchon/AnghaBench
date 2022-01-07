
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfs_node {char* pn_name; struct pfs_node* pn_parent; } ;


 int MAXPATHLEN ;
 int M_TEMP ;
 int M_WAITOK ;
 int free (char*,int ) ;
 char* malloc (int ,int ,int ) ;
 int snprintf (char*,int ,char*,char*,char*) ;
 int strlcpy (char*,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static char *
get_full_pfs_path(struct pfs_node *cur)
{
 char *temp, *path;

 temp = malloc(MAXPATHLEN, M_TEMP, M_WAITOK);
 path = malloc(MAXPATHLEN, M_TEMP, M_WAITOK);
 path[0] = '\0';

 do {
  snprintf(temp, MAXPATHLEN, "%s/%s", cur->pn_name, path);
  strlcpy(path, temp, MAXPATHLEN);
  cur = cur->pn_parent;
 } while (cur->pn_parent != ((void*)0));

 path[strlen(path) - 1] = '\0';
 free(temp, M_TEMP);
 return (path);
}
