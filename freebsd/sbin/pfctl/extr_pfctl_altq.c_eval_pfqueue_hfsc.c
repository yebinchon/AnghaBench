
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct service_curve {scalar_t__ m1; scalar_t__ m2; scalar_t__ d; } ;
struct TYPE_10__ {int children; int lssc; int rtsc; int default_classes; } ;
struct TYPE_7__ {int flags; scalar_t__ lssc_m1; scalar_t__ lssc_m2; scalar_t__ lssc_d; } ;
struct TYPE_8__ {TYPE_2__ hfsc_opts; } ;
struct TYPE_9__ {TYPE_3__ pq_u; } ;
struct pfctl_altq {TYPE_5__ meta; TYPE_4__ pa; } ;
struct pfctl {int dummy; } ;
struct hfsc_opts_v1 {scalar_t__ lssc_m1; scalar_t__ lssc_m2; int flags; scalar_t__ rtsc_m1; scalar_t__ rtsc_m2; scalar_t__ ulsc_m1; scalar_t__ ulsc_m2; scalar_t__ lssc_d; scalar_t__ rtsc_d; } ;
struct TYPE_6__ {struct hfsc_opts_v1 hfsc_opts; } ;
struct pf_altq {scalar_t__ ifbandwidth; scalar_t__ bandwidth; int qname; TYPE_1__ pq_u; int parent; } ;


 int HFCF_DEFAULTCLASS ;
 int LIST_INIT (int *) ;
 int gsc_add_sc (int *,struct service_curve*) ;
 int is_gsc_under_sc (int *,struct service_curve*) ;
 int rate2str (double) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
eval_pfqueue_hfsc(struct pfctl *pf, struct pf_altq *pa, struct pfctl_altq *if_ppa,
    struct pfctl_altq *parent)
{
 struct hfsc_opts_v1 *opts;
 struct service_curve sc;

 opts = &pa->pq_u.hfsc_opts;

 if (parent == ((void*)0)) {

  opts->lssc_m1 = pa->ifbandwidth;
  opts->lssc_m2 = pa->ifbandwidth;
  opts->lssc_d = 0;
  return (0);
 }


 if (parent->meta.children == 1) {
  LIST_INIT(&parent->meta.rtsc);
  LIST_INIT(&parent->meta.lssc);
 }

 if (parent->pa.pq_u.hfsc_opts.flags & HFCF_DEFAULTCLASS) {
  warnx("adding %s would make default queue %s not a leaf",
      pa->qname, pa->parent);
  return (-1);
 }

 if (pa->pq_u.hfsc_opts.flags & HFCF_DEFAULTCLASS)
  if_ppa->meta.default_classes++;


 if (opts->lssc_m2 == 0)
  opts->lssc_m2 = pa->bandwidth;

 if ((opts->rtsc_m1 > 0 && opts->rtsc_m2 == 0) ||
     (opts->lssc_m1 > 0 && opts->lssc_m2 == 0) ||
     (opts->ulsc_m1 > 0 && opts->ulsc_m2 == 0)) {
  warnx("m2 is zero for %s", pa->qname);
  return (-1);
 }

 if ((opts->rtsc_m1 < opts->rtsc_m2 && opts->rtsc_m1 != 0) ||
     (opts->lssc_m1 < opts->lssc_m2 && opts->lssc_m1 != 0) ||
     (opts->ulsc_m1 < opts->ulsc_m2 && opts->ulsc_m1 != 0)) {
  warnx("m1 must be zero for convex curve: %s", pa->qname);
  return (-1);
 }
 if (opts->rtsc_m2 != 0) {

  sc.m1 = opts->rtsc_m1;
  sc.d = opts->rtsc_d;
  sc.m2 = opts->rtsc_m2;
  gsc_add_sc(&parent->meta.rtsc, &sc);

  sc.m1 = 0;
  sc.d = 0;
  sc.m2 = pa->ifbandwidth / 100 * 80;
  if (!is_gsc_under_sc(&parent->meta.rtsc, &sc)) {
   warnx("real-time sc exceeds 80%% of the interface "
       "bandwidth (%s)", rate2str((double)sc.m2));
   return (-1);
  }
 }


 if (opts->lssc_m2 != 0) {

  sc.m1 = opts->lssc_m1;
  sc.d = opts->lssc_d;
  sc.m2 = opts->lssc_m2;
  gsc_add_sc(&parent->meta.lssc, &sc);

  sc.m1 = parent->pa.pq_u.hfsc_opts.lssc_m1;
  sc.d = parent->pa.pq_u.hfsc_opts.lssc_d;
  sc.m2 = parent->pa.pq_u.hfsc_opts.lssc_m2;
  if (!is_gsc_under_sc(&parent->meta.lssc, &sc)) {
   warnx("linkshare sc exceeds parent's sc");
   return (-1);
  }
 }


 if (opts->ulsc_m2 != 0) {
  if (opts->ulsc_m1 > pa->ifbandwidth ||
      opts->ulsc_m2 > pa->ifbandwidth) {
   warnx("upper-limit larger than interface bandwidth");
   return (-1);
  }
  if (opts->rtsc_m2 != 0 && opts->rtsc_m2 > opts->ulsc_m2) {
   warnx("upper-limit sc smaller than real-time sc");
   return (-1);
  }
 }

 return (0);
}
