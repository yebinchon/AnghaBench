
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hv; } ;
typedef TYPE_1__ sha1_digest ;
typedef int line ;
typedef int leapsec_reader ;
typedef int isc_sha1_t ;


 int LSVALID_BADFORMAT ;
 int LSVALID_BADHASH ;
 int LSVALID_GOODHASH ;
 int LSVALID_NOHASH ;
 int do_hash_data (int *,char*) ;
 int do_leap_hash (TYPE_1__*,char*) ;
 scalar_t__ get_line (int ,void*,char*,int) ;
 int isc_sha1_final (int *,int ) ;
 int isc_sha1_init (int *) ;
 int isc_sha1_invalidate (int *) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ memcmp (TYPE_1__*,TYPE_1__*,int) ;
 int strncmp (char*,char*,int) ;

int
leapsec_validate(
 leapsec_reader func,
 void * farg)
{
 isc_sha1_t mdctx;
 sha1_digest rdig, ldig;
 char line[50];
 int hlseen = -1;

 isc_sha1_init(&mdctx);
 while (get_line(func, farg, line, sizeof(line))) {
  if (!strncmp(line, "#h", 2))
   hlseen = do_leap_hash(&rdig, line+2);
  else if (!strncmp(line, "#@", 2))
   do_hash_data(&mdctx, line+2);
  else if (!strncmp(line, "#$", 2))
   do_hash_data(&mdctx, line+2);
  else if (isdigit((unsigned char)line[0]))
   do_hash_data(&mdctx, line);
 }
 isc_sha1_final(&mdctx, ldig.hv);
 isc_sha1_invalidate(&mdctx);

 if (0 > hlseen)
  return LSVALID_NOHASH;
 if (0 == hlseen)
  return LSVALID_BADFORMAT;
 if (0 != memcmp(&rdig, &ldig, sizeof(sha1_digest)))
  return LSVALID_BADHASH;
 return LSVALID_GOODHASH;
}
