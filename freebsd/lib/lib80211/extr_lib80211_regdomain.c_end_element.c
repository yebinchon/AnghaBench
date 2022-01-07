
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mystate {size_t level; int ** sbuf; TYPE_1__* country; int parser; int * curband; TYPE_4__* netband; TYPE_3__* rd; TYPE_2__* freqband; } ;
struct TYPE_8__ {scalar_t__ maxPower; scalar_t__ maxPowerDFS; int * band; void* maxAntGain; int flags; } ;
struct TYPE_7__ {void* sku; void* name; } ;
struct TYPE_6__ {int flags; void* chanSep; void* chanWidth; void* freqEnd; void* freqStart; } ;
struct TYPE_5__ {int * rd; int * name; void* code; } ;


 int NO_COUNTRY ;
 int XML_GetCurrentLineNumber (int ) ;
 int decode_flag (struct mystate*,char*,int) ;
 scalar_t__ iseq (char const*,char*) ;
 char* sbuf_data (int *) ;
 int sbuf_delete (int *) ;
 int sbuf_finish (int *) ;
 int sbuf_len (int *) ;
 void* strdup (char*) ;
 void* strtoul (char*,int *,int ) ;
 int warnx (char*,char const*,...) ;

__attribute__((used)) static void
end_element(void *data, const char *name)
{

 struct mystate *mt;
 int len;
 char *p;

 mt = data;
 sbuf_finish(mt->sbuf[mt->level]);
 p = sbuf_data(mt->sbuf[mt->level]);
 len = sbuf_len(mt->sbuf[mt->level]);


 if ((strcasecmp(name,"freqstart") == 0) && mt->freqband != ((void*)0)) {
  mt->freqband->freqStart = strtoul(p, ((void*)0), 0);
  goto done;
 }
 if ((strcasecmp(name,"freqend") == 0) && mt->freqband != ((void*)0)) {
  mt->freqband->freqEnd = strtoul(p, ((void*)0), 0);
  goto done;
 }
 if ((strcasecmp(name,"chanwidth") == 0) && mt->freqband != ((void*)0)) {
  mt->freqband->chanWidth = strtoul(p, ((void*)0), 0);
  goto done;
 }
 if ((strcasecmp(name,"chansep") == 0) && mt->freqband != ((void*)0)) {
  mt->freqband->chanSep = strtoul(p, ((void*)0), 0);
  goto done;
 }
 if ((strcasecmp(name,"flags") == 0)) {
  if (mt->freqband != ((void*)0))
   mt->freqband->flags |= decode_flag(mt, p, len);
  else if (mt->netband != ((void*)0))
   mt->netband->flags |= decode_flag(mt, p, len);
  else {
   warnx("flags without freqband or netband at line %ld ignored",
       XML_GetCurrentLineNumber(mt->parser));
  }
  goto done;
 }


 if ((strcasecmp(name,"name") == 0) && mt->rd != ((void*)0)) {
  mt->rd->name = strdup(p);
  goto done;
 }
 if ((strcasecmp(name,"sku") == 0) && mt->rd != ((void*)0)) {
  mt->rd->sku = strtoul(p, ((void*)0), 0);
  goto done;
 }
 if ((strcasecmp(name,"netband") == 0) && mt->rd != ((void*)0)) {
  mt->curband = ((void*)0);
  goto done;
 }


 if ((strcasecmp(name,"freqband") == 0) && mt->netband != ((void*)0)) {

  goto done;
 }
 if ((strcasecmp(name,"maxpower") == 0) && mt->netband != ((void*)0)) {
  mt->netband->maxPower = strtoul(p, ((void*)0), 0);
  goto done;
 }
 if ((strcasecmp(name,"maxpowerdfs") == 0) && mt->netband != ((void*)0)) {
  mt->netband->maxPowerDFS = strtoul(p, ((void*)0), 0);
  goto done;
 }
 if ((strcasecmp(name,"maxantgain") == 0) && mt->netband != ((void*)0)) {
  mt->netband->maxAntGain = strtoul(p, ((void*)0), 0);
  goto done;
 }


 if ((strcasecmp(name,"isocc") == 0) && mt->country != ((void*)0)) {
  mt->country->code = strtoul(p, ((void*)0), 0);
  goto done;
 }
 if ((strcasecmp(name,"name") == 0) && mt->country != ((void*)0)) {
  mt->country->name = strdup(p);
  goto done;
 }

 if (len != 0) {
  warnx("unexpected XML token \"%s\" data \"%s\" at line %ld",
      name, p, XML_GetCurrentLineNumber(mt->parser));

 }

 if ((strcasecmp(name,"freqband") == 0) && mt->freqband != ((void*)0)) {


  mt->freqband = ((void*)0);
  goto done;
 }

 if ((strcasecmp(name,"rd") == 0) && mt->rd != ((void*)0)) {
  mt->rd = ((void*)0);
  goto done;
 }

 if ((strcasecmp(name,"band") == 0) && mt->netband != ((void*)0)) {
  if (mt->netband->band == ((void*)0)) {
   warnx("no freqbands for band at line %ld",
      XML_GetCurrentLineNumber(mt->parser));
  }
  if (mt->netband->maxPower == 0) {
   warnx("no maxpower for band at line %ld",
      XML_GetCurrentLineNumber(mt->parser));
  }

  if (mt->netband->maxPowerDFS == 0)
   mt->netband->maxPowerDFS = mt->netband->maxPower;
  mt->netband = ((void*)0);
  goto done;
 }

 if ((strcasecmp(name,"netband") == 0) && mt->netband != ((void*)0)) {
  mt->curband = ((void*)0);
  goto done;
 }

 if ((strcasecmp(name,"country") == 0) && mt->country != ((void*)0)) {

  if ((int) mt->country->code == NO_COUNTRY) {
   warnx("no ISO cc for country at line %ld",
      XML_GetCurrentLineNumber(mt->parser));
  }
  if (mt->country->name == ((void*)0)) {
   warnx("no name for country at line %ld",
      XML_GetCurrentLineNumber(mt->parser));
  }
  if (mt->country->rd == ((void*)0)) {
   warnx("no regdomain reference for country at line %ld",
      XML_GetCurrentLineNumber(mt->parser));
  }
  mt->country = ((void*)0);
  goto done;
 }
done:
 sbuf_delete(mt->sbuf[mt->level]);
 mt->sbuf[mt->level--] = ((void*)0);

}
