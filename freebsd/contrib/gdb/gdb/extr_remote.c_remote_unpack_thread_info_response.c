
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int threadref ;
struct remote_state {int remote_packet_size; } ;
struct gdb_ext_thread_info {char* display; char* shortname; char* more_display; int active; int threadid; } ;


 unsigned int TAG_DISPLAY ;
 unsigned int TAG_EXISTS ;
 unsigned int TAG_MOREDISPLAY ;
 unsigned int TAG_THREADID ;
 unsigned int TAG_THREADNAME ;
 int copy_threadref (int *,int *) ;
 struct remote_state* get_remote_state () ;
 int stub_unpack_int (char*,int) ;
 int threadmatch (int *,int *) ;
 char* unpack_byte (char*,int*) ;
 char* unpack_int (char*,...) ;
 char* unpack_string (char*,char*,int) ;
 char* unpack_threadid (char*,int *) ;
 int warning (char*) ;

__attribute__((used)) static int
remote_unpack_thread_info_response (char *pkt, threadref *expectedref,
        struct gdb_ext_thread_info *info)
{
  struct remote_state *rs = get_remote_state ();
  int mask, length;
  unsigned int tag;
  threadref ref;
  char *limit = pkt + (rs->remote_packet_size);
  int retval = 1;


  info->active = 0;
  info->display[0] = '\0';
  info->shortname[0] = '\0';
  info->more_display[0] = '\0';


  pkt = unpack_int (pkt, &mask);
  pkt = unpack_threadid (pkt, &ref);

  if (mask == 0)
    warning ("Incomplete response to threadinfo request\n");
  if (!threadmatch (&ref, expectedref))
    {
      warning ("ERROR RMT Thread info mismatch\n");
      return 0;
    }
  copy_threadref (&info->threadid, &ref);



  while ((pkt < limit) && mask && *pkt)
    {
      pkt = unpack_int (pkt, &tag);
      pkt = unpack_byte (pkt, &length);
      if (!(tag & mask))
 {
   warning ("ERROR RMT: threadinfo tag mismatch\n");
   retval = 0;
   break;
 }
      if (tag == TAG_THREADID)
 {
   if (length != 16)
     {
       warning ("ERROR RMT: length of threadid is not 16\n");
       retval = 0;
       break;
     }
   pkt = unpack_threadid (pkt, &ref);
   mask = mask & ~TAG_THREADID;
   continue;
 }
      if (tag == TAG_EXISTS)
 {
   info->active = stub_unpack_int (pkt, length);
   pkt += length;
   mask = mask & ~(TAG_EXISTS);
   if (length > 8)
     {
       warning ("ERROR RMT: 'exists' length too long\n");
       retval = 0;
       break;
     }
   continue;
 }
      if (tag == TAG_THREADNAME)
 {
   pkt = unpack_string (pkt, &info->shortname[0], length);
   mask = mask & ~TAG_THREADNAME;
   continue;
 }
      if (tag == TAG_DISPLAY)
 {
   pkt = unpack_string (pkt, &info->display[0], length);
   mask = mask & ~TAG_DISPLAY;
   continue;
 }
      if (tag == TAG_MOREDISPLAY)
 {
   pkt = unpack_string (pkt, &info->more_display[0], length);
   mask = mask & ~TAG_MOREDISPLAY;
   continue;
 }
      warning ("ERROR RMT: unknown thread info tag\n");
      break;
    }
  return retval;
}
