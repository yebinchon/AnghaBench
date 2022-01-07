
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usage_page {size_t pagesize; size_t pagesizemax; char* name; int usage; struct usage_page* page_contents; } ;
struct usage_in_page {int dummy; } ;
typedef int FILE ;


 char* _PATH_HIDTABLE ;
 int dump_hid_table () ;
 int err (int,char*,...) ;
 int errx (int,char*,char const*,int) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ isspace (char) ;
 void* malloc (int) ;
 int npages ;
 int npagesmax ;
 struct usage_page* pages ;
 void* realloc (struct usage_page*,int) ;
 int sscanf (char*,char*,...) ;
 char* strdup (char*) ;

void
hid_init(const char *hidname)
{
 FILE *f;
 char line[100], name[100], *p, *n;
 int no;
 int lineno;
 struct usage_page *curpage = ((void*)0);

 if (hidname == ((void*)0))
  hidname = _PATH_HIDTABLE;

 f = fopen(hidname, "r");
 if (f == ((void*)0))
  err(1, "%s", hidname);
 for (lineno = 1; ; lineno++) {
  if (fgets(line, sizeof line, f) == ((void*)0))
   break;
  if (line[0] == '#')
   continue;
  for (p = line; *p && isspace(*p); p++)
   ;
  if (!*p)
   continue;
  if (sscanf(line, " * %[^\n]", name) == 1)
   no = -1;
  else if (sscanf(line, " 0x%x %[^\n]", &no, name) != 2 &&
    sscanf(line, " %d %[^\n]", &no, name) != 2)
   errx(1, "file %s, line %d, syntax error",
        hidname, lineno);
  for (p = name; *p; p++)
   if (isspace(*p) || *p == '.')
    *p = '_';
  n = strdup(name);
  if (!n)
   err(1, "strdup");
  if (isspace(line[0])) {
   if (!curpage)
    errx(1, "file %s, line %d, syntax error",
         hidname, lineno);
   if (curpage->pagesize >= curpage->pagesizemax) {
    curpage->pagesizemax += 10;
    curpage->page_contents =
     realloc(curpage->page_contents,
      curpage->pagesizemax *
      sizeof (struct usage_in_page));
    if (!curpage->page_contents)
     err(1, "realloc");
   }
   curpage->page_contents[curpage->pagesize].name = n;
   curpage->page_contents[curpage->pagesize].usage = no;
   curpage->pagesize++;
  } else {
   if (npages >= npagesmax) {
    if (pages == ((void*)0)) {
     npagesmax = 5;
     pages = malloc(npagesmax *
        sizeof (struct usage_page));
    } else {
     npagesmax += 5;
     pages = realloc(pages,
         npagesmax *
         sizeof (struct usage_page));
    }
    if (!pages)
     err(1, "alloc");
   }
   curpage = &pages[npages++];
   curpage->name = n;
   curpage->usage = no;
   curpage->pagesize = 0;
   curpage->pagesizemax = 10;
   curpage->page_contents =
    malloc(curpage->pagesizemax *
           sizeof (struct usage_in_page));
   if (!curpage->page_contents)
    err(1, "malloc");
  }
 }
 fclose(f);



}
