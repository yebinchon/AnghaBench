
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_long ;
typedef int ginfo ;
struct TYPE_11__ {scalar_t__ type; int flags; char* name; struct TYPE_11__* parent; scalar_t__ lineno; struct TYPE_11__* child; struct TYPE_11__* next; } ;
typedef TYPE_1__ NODE ;
typedef int FILE ;


 int FPARSELN_UNESCCOMM ;
 scalar_t__ F_DIR ;
 int F_DONE ;
 int F_MAGIC ;
 int MAGIC ;
 int addchild (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* calloc (int,int) ;
 int errno ;
 char* fparseln (int *,int *,scalar_t__*,int *,int ) ;
 int fprintf (int ,char*,int ,char*) ;
 int free (char*) ;
 scalar_t__ isspace (unsigned char) ;
 int memset (TYPE_1__*,int ,int) ;
 int mtree_err (char*,...) ;
 scalar_t__ mtree_lineno ;
 char* realloc (char*,size_t) ;
 int replacenode (TYPE_1__*,TYPE_1__*) ;
 int set (char*,TYPE_1__*) ;
 int stderr ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strerror (int ) ;
 int strlen (char*) ;
 scalar_t__ strpbrk (char*,int ) ;
 char* strsep (char**,char*) ;
 int strunvis (char*,char*) ;
 int unset (char*,TYPE_1__*) ;

NODE *
spec(FILE *fp)
{
 NODE *centry, *last, *pathparent, *cur;
 char *p, *e, *next;
 NODE ginfo, *root;
 char *buf, *tname, *ntname;
 size_t tnamelen, plen;

 root = ((void*)0);
 centry = last = ((void*)0);
 tname = ((void*)0);
 tnamelen = 0;
 memset(&ginfo, 0, sizeof(ginfo));
 for (mtree_lineno = 0;
     (buf = fparseln(fp, ((void*)0), &mtree_lineno, ((void*)0),
  FPARSELN_UNESCCOMM));
     free(buf)) {

  for (p = buf; *p && isspace((unsigned char)*p); ++p)
   continue;


  if (!*p)
   continue;






  next = buf;
  while ((p = strsep(&next, " \t")) != ((void*)0) && *p == '\0')
   continue;
  if (p == ((void*)0))
   mtree_err("missing field");

  if (p[0] == '/') {
   if (strcmp(p + 1, "set") == 0)
    set(next, &ginfo);
   else if (strcmp(p + 1, "unset") == 0)
    unset(next, &ginfo);
   else
    mtree_err("invalid specification `%s'", p);
   continue;
  }

  if (strcmp(p, "..") == 0) {

   if (root == ((void*)0))
    goto noparent;
   if (last->type != F_DIR || last->flags & F_DONE) {
    if (last == root)
     goto noparent;
    last = last->parent;
   }
   last->flags |= F_DONE;
   continue;

noparent: mtree_err("no parent node");
  }

  plen = strlen(p) + 1;
  if (plen > tnamelen) {
   if ((ntname = realloc(tname, plen)) == ((void*)0))
    mtree_err("realloc: %s", strerror(errno));
   tname = ntname;
   tnamelen = plen;
  }
  if (strunvis(tname, p) == -1)
   mtree_err("strunvis failed on `%s'", p);
  p = tname;

  pathparent = ((void*)0);
  if (strchr(p, '/') != ((void*)0)) {
   cur = root;
   for (; (e = strchr(p, '/')) != ((void*)0); p = e+1) {
    if (p == e)
     continue;
    *e = '\0';
    if (strcmp(p, ".") != 0) {
     while (cur &&
         strcmp(cur->name, p) != 0) {
      cur = cur->next;
     }
    }
    if (cur == ((void*)0) || cur->type != F_DIR) {
     mtree_err("%s: %s", tname,
     "missing directory in specification");
    }
    *e = '/';
    pathparent = cur;
    cur = cur->child;
   }
   if (*p == '\0')
    mtree_err("%s: empty leaf element", tname);
  }

  if ((centry = calloc(1, sizeof(NODE) + strlen(p))) == ((void*)0))
   mtree_err("%s", strerror(errno));
  *centry = ginfo;
  centry->lineno = mtree_lineno;
  strcpy(centry->name, p);

  if (strpbrk(p, "?*["))
   centry->flags |= F_MAGIC;
  set(next, centry);

  if (root == ((void*)0)) {







   if (strcmp(centry->name, ".") == 0 && centry->type == 0)
    centry->type = F_DIR;
   if (strcmp(centry->name, ".") != 0 ||
       centry->type != F_DIR)
    mtree_err(
        "root node must be the directory `.'");
   last = root = centry;
   root->parent = root;
  } else if (pathparent != ((void*)0)) {



   centry->parent = pathparent;
   addchild(pathparent, centry);
   last = centry;
  } else if (strcmp(centry->name, ".") == 0) {



   replacenode(root, centry);
  } else if (last->type == F_DIR && !(last->flags & F_DONE)) {




   centry->parent = last;
   addchild(last, centry);
   last = centry;
  } else {





   centry->parent = last->parent;
   addchild(last->parent, centry);
   last = centry;
  }
 }
 return (root);
}
