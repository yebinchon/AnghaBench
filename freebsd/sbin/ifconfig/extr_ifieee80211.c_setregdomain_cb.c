
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct regdomain {int name; struct country const* cc; } ;
struct regdata {int dummy; } ;
struct TYPE_6__ {scalar_t__ ic_nchans; } ;
struct ieee80211_regdomain {scalar_t__ country; int regdomain; } ;
struct ieee80211_regdomain_req {int dc_drivercaps; int dc_cryptocaps; int dc_htcaps; int dc_vhtcaps; TYPE_2__ chaninfo; struct ieee80211_regdomain rd; TYPE_2__ dc_chaninfo; } ;
struct ieee80211_devcaps_req {int dc_drivercaps; int dc_cryptocaps; int dc_htcaps; int dc_vhtcaps; TYPE_2__ chaninfo; struct ieee80211_regdomain rd; TYPE_2__ dc_chaninfo; } ;
struct country {int name; int isoname; TYPE_1__* rd; } ;
struct TYPE_5__ {int sku; } ;


 int IEEE80211_CHANINFO_SPACE (TYPE_2__*) ;
 int IEEE80211_DEVCAPS_SIZE (scalar_t__) ;
 int IEEE80211_IOC_REGDOMAIN ;
 int IEEE80211_REGDOMAIN_SIZE (scalar_t__) ;
 int IEEE80211_REGDOMAIN_SPACE (struct ieee80211_regdomain_req*) ;
 int LINE_BREAK () ;
 int LINE_INIT (char) ;
 scalar_t__ MAXCHAN ;
 scalar_t__ NO_COUNTRY ;
 struct ieee80211_regdomain_req* chaninfo ;
 int errx (int,char*,...) ;
 int free (struct ieee80211_regdomain_req*) ;
 int getdevcaps (int,struct ieee80211_regdomain_req*) ;
 struct regdata* getregdata () ;
 struct country* lib80211_country_findbycc (struct regdata*,scalar_t__) ;
 struct regdomain* lib80211_regdomain_findbysku (struct regdata*,int ) ;
 struct ieee80211_regdomain_req* malloc (int ) ;
 int memcpy (struct ieee80211_regdomain_req*,TYPE_2__*,int ) ;
 int print_channels (int,TYPE_2__*,int,int) ;
 int print_regdomain (struct ieee80211_regdomain*,int) ;
 int printf (char*,int) ;
 int regdomain_makechannels (struct ieee80211_regdomain_req*,struct ieee80211_regdomain_req*) ;
 int set80211 (int,int ,int ,int ,struct ieee80211_regdomain_req*) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
setregdomain_cb(int s, void *arg)
{
 struct ieee80211_regdomain_req *req;
 struct ieee80211_regdomain *rd = arg;
 struct ieee80211_devcaps_req *dc;
 struct regdata *rdp = getregdata();

 if (rd->country != NO_COUNTRY) {
  const struct country *cc;






  cc = lib80211_country_findbycc(rdp, rd->country);
  if (cc == ((void*)0))
   errx(1, "unknown ISO country code %d", rd->country);
  if (cc->rd->sku != rd->regdomain) {
   const struct regdomain *rp;
   rp = lib80211_regdomain_findbysku(rdp, rd->regdomain);
   if (rp == ((void*)0))
    errx(1, "country %s (%s) is not usable with "
        "regdomain %d", cc->isoname, cc->name,
        rd->regdomain);
   else if (rp->cc != ((void*)0) && rp->cc != cc)
    errx(1, "country %s (%s) is not usable with "
       "regdomain %s", cc->isoname, cc->name,
       rp->name);
  }
 }






 dc = malloc(IEEE80211_DEVCAPS_SIZE(MAXCHAN));
 if (dc == ((void*)0))
  errx(1, "no space for device capabilities");
 dc->dc_chaninfo.ic_nchans = MAXCHAN;
 getdevcaps(s, dc);
 req = malloc(IEEE80211_REGDOMAIN_SIZE(dc->dc_chaninfo.ic_nchans));
 if (req == ((void*)0))
  errx(1, "no space for regdomain request");
 req->rd = *rd;
 regdomain_makechannels(req, dc);
 if (verbose) {
  LINE_INIT(':');
  print_regdomain(rd, 1 );
  LINE_BREAK();

  if (chaninfo != ((void*)0))
   free(chaninfo);
  chaninfo = malloc(IEEE80211_CHANINFO_SPACE(&req->chaninfo));
  if (chaninfo == ((void*)0))
   errx(1, "no space for channel list");
  memcpy(chaninfo, &req->chaninfo,
      IEEE80211_CHANINFO_SPACE(&req->chaninfo));
  print_channels(s, &req->chaninfo, 1 , 1 );
 }
 if (req->chaninfo.ic_nchans == 0)
  errx(1, "no channels calculated");
 set80211(s, IEEE80211_IOC_REGDOMAIN, 0,
     IEEE80211_REGDOMAIN_SPACE(req), req);
 free(req);
 free(dc);
}
