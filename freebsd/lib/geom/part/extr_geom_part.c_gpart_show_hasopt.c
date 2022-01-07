
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 int EXIT_FAILURE ;
 int errx (int ,char*) ;
 int gctl_get_int (struct gctl_req*,char*,char const*) ;

__attribute__((used)) static int
gpart_show_hasopt(struct gctl_req *req, const char *opt, const char *elt)
{

 if (!gctl_get_int(req, "%s", opt))
  return (0);

 if (elt != ((void*)0))
  errx(EXIT_FAILURE, "-l and -r are mutually exclusive");

 return (1);
}
