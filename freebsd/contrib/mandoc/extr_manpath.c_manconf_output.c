
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int toks ;
struct manoutput {char const* includes; char const* man; char const* paper; char const* style; char const* tag; int fragment; int mdoc; int noval; int toc; void* width; void* indent; } ;


 int MANDOCERR_BADARG_BAD ;
 int MANDOCERR_BADVAL ;
 int MANDOCERR_BADVAL_BAD ;
 int MANDOCERR_BADVAL_DUPE ;
 int MANDOCERR_BADVAL_MISS ;
 int free (char*) ;
 scalar_t__ isspace (unsigned char) ;
 int mandoc_asprintf (char**,char*,void*) ;
 int mandoc_msg (int ,int ,int ,char*,char const* const,...) ;
 void* mandoc_strdup (char const*) ;
 int * strchr (char*,char const) ;
 size_t strlen (char const* const) ;
 scalar_t__ strncmp (char const*,char const* const,size_t) ;
 void* strtonum (char const*,int,int,char const**) ;

int
manconf_output(struct manoutput *conf, const char *cp, int fromfile)
{
 const char *const toks[] = {
     "includes", "man", "paper", "style", "indent", "width",
     "tag", "fragment", "mdoc", "noval", "toc"
 };
 const size_t ntoks = sizeof(toks) / sizeof(toks[0]);

 const char *errstr;
 char *oldval;
 size_t len, tok;

 for (tok = 0; tok < ntoks; tok++) {
  len = strlen(toks[tok]);
  if (strncmp(cp, toks[tok], len) == 0 &&
      strchr(" =	", cp[len]) != ((void*)0)) {
   cp += len;
   if (*cp == '=')
    cp++;
   while (isspace((unsigned char)*cp))
    cp++;
   break;
  }
 }

 if (tok < 6 && *cp == '\0') {
  mandoc_msg(MANDOCERR_BADVAL_MISS, 0, 0, "-O %s=?", toks[tok]);
  return -1;
 }
 if (tok > 6 && tok < ntoks && *cp != '\0') {
  mandoc_msg(MANDOCERR_BADVAL, 0, 0, "-O %s=%s", toks[tok], cp);
  return -1;
 }

 switch (tok) {
 case 0:
  if (conf->includes != ((void*)0)) {
   oldval = mandoc_strdup(conf->includes);
   break;
  }
  conf->includes = mandoc_strdup(cp);
  return 0;
 case 1:
  if (conf->man != ((void*)0)) {
   oldval = mandoc_strdup(conf->man);
   break;
  }
  conf->man = mandoc_strdup(cp);
  return 0;
 case 2:
  if (conf->paper != ((void*)0)) {
   oldval = mandoc_strdup(conf->paper);
   break;
  }
  conf->paper = mandoc_strdup(cp);
  return 0;
 case 3:
  if (conf->style != ((void*)0)) {
   oldval = mandoc_strdup(conf->style);
   break;
  }
  conf->style = mandoc_strdup(cp);
  return 0;
 case 4:
  if (conf->indent) {
   mandoc_asprintf(&oldval, "%zu", conf->indent);
   break;
  }
  conf->indent = strtonum(cp, 0, 1000, &errstr);
  if (errstr == ((void*)0))
   return 0;
  mandoc_msg(MANDOCERR_BADVAL_BAD, 0, 0,
      "-O indent=%s is %s", cp, errstr);
  return -1;
 case 5:
  if (conf->width) {
   mandoc_asprintf(&oldval, "%zu", conf->width);
   break;
  }
  conf->width = strtonum(cp, 1, 1000, &errstr);
  if (errstr == ((void*)0))
   return 0;
  mandoc_msg(MANDOCERR_BADVAL_BAD, 0, 0,
      "-O width=%s is %s", cp, errstr);
  return -1;
 case 6:
  if (conf->tag != ((void*)0)) {
   oldval = mandoc_strdup(conf->tag);
   break;
  }
  conf->tag = mandoc_strdup(cp);
  return 0;
 case 7:
  conf->fragment = 1;
  return 0;
 case 8:
  conf->mdoc = 1;
  return 0;
 case 9:
  conf->noval = 1;
  return 0;
 case 10:
  conf->toc = 1;
  return 0;
 default:
  mandoc_msg(MANDOCERR_BADARG_BAD, 0, 0, "-O %s", cp);
  return -1;
 }
 if (fromfile) {
  free(oldval);
  return 0;
 } else {
  mandoc_msg(MANDOCERR_BADVAL_DUPE, 0, 0,
      "-O %s=%s: already set to %s", toks[tok], cp, oldval);
  free(oldval);
  return -1;
 }
}
