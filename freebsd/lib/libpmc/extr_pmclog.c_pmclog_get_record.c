
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pmclog_parse_state {int ps_state; int ps_svcount; int ps_saved; } ;
typedef int ssize_t ;
typedef enum pmclog_parser_state { ____Placeholder_pmclog_parser_state } pmclog_parser_state ;


 void* PL_STATE_ERROR ;



 int PMCLOG_HEADER_FROM_SAVED_STATE (struct pmclog_parse_state*) ;
 int PMCLOG_HEADER_TO_LENGTH (int ) ;
 int bcopy (char*,char*,int) ;

__attribute__((used)) static enum pmclog_parser_state
pmclog_get_record(struct pmclog_parse_state *ps, char **data, ssize_t *len)
{
 int avail, copylen, recordsize, used;
 uint32_t h;
 const int HEADERSIZE = sizeof(uint32_t);
 char *src, *dst;

 if ((avail = *len) <= 0)
  return (ps->ps_state = PL_STATE_ERROR);

 src = *data;
 used = 0;

 if (ps->ps_state == 129)
  ps->ps_svcount = 0;

 dst = (char *) &ps->ps_saved + ps->ps_svcount;

 switch (ps->ps_state) {
 case 129:
  copylen = avail < HEADERSIZE ? avail : HEADERSIZE;
  bcopy(src, dst, copylen);
  ps->ps_svcount = used = copylen;

  if (copylen < HEADERSIZE) {
   ps->ps_state = 130;
   goto done;
  }

  src += copylen;
  dst += copylen;

  h = PMCLOG_HEADER_FROM_SAVED_STATE(ps);
  recordsize = PMCLOG_HEADER_TO_LENGTH(h);

  if (recordsize <= 0)
   goto error;

  if (recordsize <= avail) {
   bcopy(src, dst, recordsize - copylen);
   ps->ps_svcount = used = recordsize;
   goto done;
  }


  bcopy(src, dst, avail - copylen);
  ps->ps_svcount = used = avail;
  ps->ps_state = 128;

  break;

 case 130:
  if (avail + ps->ps_svcount < HEADERSIZE) {
   bcopy(src, dst, avail);
   ps->ps_svcount += avail;
   used = avail;
   break;
  }

  used = copylen = HEADERSIZE - ps->ps_svcount;
  bcopy(src, dst, copylen);
  src += copylen;
  dst += copylen;
  avail -= copylen;
  ps->ps_svcount += copylen;



 case 128:
  h = PMCLOG_HEADER_FROM_SAVED_STATE(ps);
  recordsize = PMCLOG_HEADER_TO_LENGTH(h);

  if (recordsize <= 0)
   goto error;

  if (avail + ps->ps_svcount < recordsize) {
   copylen = avail;
   ps->ps_state = 128;
  } else {
   copylen = recordsize - ps->ps_svcount;
   ps->ps_state = 129;
  }

  bcopy(src, dst, copylen);
  ps->ps_svcount += copylen;
  used += copylen;
  break;

 default:
  goto error;
 }

 done:
 *data += used;
 *len -= used;
 return ps->ps_state;

 error:
 ps->ps_state = PL_STATE_ERROR;
 return ps->ps_state;
}
