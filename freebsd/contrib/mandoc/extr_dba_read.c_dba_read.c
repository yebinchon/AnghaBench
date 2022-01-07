
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbm_page {char* arch; char* file; char* name; char* sect; int desc; } ;
struct dbm_macro {int pp; int value; } ;
struct dba_array {int dummy; } ;
struct dba {int pages; } ;
typedef int int32_t ;


 int DBP_ARCH ;
 int DBP_FILE ;
 int DBP_NAME ;
 int DBP_SECT ;
 int MACRO_MAX ;
 int dba_macro_new (struct dba*,int,int ,int ) ;
 struct dba* dba_new (int) ;
 int dba_page_add (struct dba_array*,int ,char const*) ;
 struct dba_array* dba_page_new (int ,char*,int ,char*,char) ;
 int dbm_close () ;
 int dbm_macro_count (int) ;
 struct dbm_macro* dbm_macro_get (int,int) ;
 int dbm_open (char const*) ;
 int dbm_page_count () ;
 struct dbm_page* dbm_page_get (int) ;
 char* strchr (char const*,char) ;

struct dba *
dba_read(const char *fname)
{
 struct dba *dba;
 struct dba_array *page;
 struct dbm_page *pdata;
 struct dbm_macro *mdata;
 const char *cp;
 int32_t im, ip, iv, npages;

 if (dbm_open(fname) == -1)
  return ((void*)0);
 npages = dbm_page_count();
 dba = dba_new(npages < 128 ? 128 : npages);
 for (ip = 0; ip < npages; ip++) {
  pdata = dbm_page_get(ip);
  page = dba_page_new(dba->pages, pdata->arch,
      pdata->desc, pdata->file + 1, *pdata->file);
  for (cp = pdata->name; *cp != '\0'; cp = strchr(cp, '\0') + 1)
   dba_page_add(page, DBP_NAME, cp);
  for (cp = pdata->sect; *cp != '\0'; cp = strchr(cp, '\0') + 1)
   dba_page_add(page, DBP_SECT, cp);
  if ((cp = pdata->arch) != ((void*)0))
   while (*(cp = strchr(cp, '\0') + 1) != '\0')
    dba_page_add(page, DBP_ARCH, cp);
  cp = pdata->file;
  while (*(cp = strchr(cp, '\0') + 1) != '\0')
   dba_page_add(page, DBP_FILE, cp);
 }
 for (im = 0; im < MACRO_MAX; im++) {
  for (iv = 0; iv < dbm_macro_count(im); iv++) {
   mdata = dbm_macro_get(im, iv);
   dba_macro_new(dba, im, mdata->value, mdata->pp);
  }
 }
 dbm_close();
 return dba;
}
