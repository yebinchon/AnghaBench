
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* manpath; scalar_t__ equal; int * arch; } ;
struct req {TYPE_1__ q; int * p; scalar_t__ isquery; } ;
struct manpage {char* file; int output; int names; } ;


 int FOCUS_NONE ;
 int FOCUS_QUERY ;
 int html_print (int ) ;
 int pg_error_internal () ;
 int printf (char*,...) ;
 int puts (char*) ;
 int resp_begin_html (int,int *,char*) ;
 int resp_end_html () ;
 int resp_searchform (struct req const*,int ) ;
 int resp_show (struct req const*,char*) ;
 char* scriptname ;
 int* sec_prios ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char*,int ) ;
 int strcspn (char const*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ validate_filename (char*) ;
 int warnx (char*,char*,char*) ;

__attribute__((used)) static void
pg_searchres(const struct req *req, struct manpage *r, size_t sz)
{
 char *arch, *archend;
 const char *sec;
 size_t i, iuse;
 int archprio, archpriouse;
 int prio, priouse;

 for (i = 0; i < sz; i++) {
  if (validate_filename(r[i].file))
   continue;
  warnx("invalid filename %s in %s database",
      r[i].file, req->q.manpath);
  pg_error_internal();
  return;
 }

 if (req->isquery && sz == 1) {




  printf("Status: 303 See Other\r\n"
      "Location: /");
  if (*scriptname != '\0')
   printf("%s/", scriptname);
  if (strcmp(req->q.manpath, req->p[0]))
   printf("%s/", req->q.manpath);
  printf("%s\r\n"
      "Content-Type: text/html; charset=utf-8\r\n\r\n",
      r[0].file);
  return;
 }






 iuse = 0;
 if (req->q.equal || sz == 1) {
  priouse = 20;
  archpriouse = 3;
  for (i = 0; i < sz; i++) {
   sec = r[i].file;
   sec += strcspn(sec, "123456789");
   if (sec[0] == '\0')
    continue;
   prio = sec_prios[sec[0] - '1'];
   if (sec[1] != '/')
    prio += 10;
   if (req->q.arch == ((void*)0)) {
    archprio =
        ((arch = strchr(sec + 1, '/'))
     == ((void*)0)) ? 3 :
        ((archend = strchr(arch + 1, '/'))
     == ((void*)0)) ? 0 :
        strncmp(arch, "amd64/",
     archend - arch) ? 2 : 1;
    if (archprio < archpriouse) {
     archpriouse = archprio;
     priouse = prio;
     iuse = i;
     continue;
    }
    if (archprio > archpriouse)
     continue;
   }
   if (prio >= priouse)
    continue;
   priouse = prio;
   iuse = i;
  }
  resp_begin_html(200, ((void*)0), r[iuse].file);
 } else
  resp_begin_html(200, ((void*)0), ((void*)0));

 resp_searchform(req,
     req->q.equal || sz == 1 ? FOCUS_NONE : FOCUS_QUERY);

 if (sz > 1) {
  puts("<table class=\"results\">");
  for (i = 0; i < sz; i++) {
   printf("  <tr>\n"
          "    <td>"
          "<a class=\"Xr\" href=\"/");
   if (*scriptname != '\0')
    printf("%s/", scriptname);
   if (strcmp(req->q.manpath, req->p[0]))
    printf("%s/", req->q.manpath);
   printf("%s\">", r[i].file);
   html_print(r[i].names);
   printf("</a></td>\n"
          "    <td><span class=\"Nd\">");
   html_print(r[i].output);
   puts("</span></td>\n"
        "  </tr>");
  }
  puts("</table>");
 }

 if (req->q.equal || sz == 1) {
  puts("<hr>");
  resp_show(req, r[iuse].file);
 }

 resp_end_html();
}
