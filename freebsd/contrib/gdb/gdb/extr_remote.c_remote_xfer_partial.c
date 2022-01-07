
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct remote_state {int remote_packet_size; } ;
typedef enum target_object { ____Placeholder_target_object } target_object ;
typedef int ULONGEST ;
struct TYPE_4__ {int support; } ;
typedef int LONGEST ;


 int PACKET_DISABLE ;
 int PACKET_OK ;




 char* alloca (int) ;
 int error (char*) ;
 int gdb_assert (int) ;
 struct remote_state* get_remote_state () ;
 int getpkt (void*,int,int ) ;
 int hex2bin (char*,void*,int) ;
 scalar_t__ isprint (char const) ;
 int min (int,int) ;
 int packet_ok (char*,TYPE_1__*) ;
 char* phex_nz (int,int) ;
 int putpkt (char*) ;
 int remote_desc ;
 TYPE_1__ remote_protocol_qPart_auxv ;
 TYPE_1__ remote_protocol_qPart_dirty ;
 int snprintf (char*,int,char*,...) ;
 int strlen (void*) ;

__attribute__((used)) static LONGEST
remote_xfer_partial (struct target_ops *ops, enum target_object object,
       const char *annex, void *readbuf, const void *writebuf,
       ULONGEST offset, LONGEST len)
{
  struct remote_state *rs = get_remote_state ();
  int i;
  char *buf2 = alloca (rs->remote_packet_size);
  char *p2 = &buf2[0];
  char query_type;


  if (writebuf != ((void*)0) || readbuf == ((void*)0))
    return -1;



  switch (object)
    {
    case 128:
      query_type = 'K';
      break;
    case 130:
      query_type = 'R';
      break;

    case 131:
      if (remote_protocol_qPart_auxv.support != PACKET_DISABLE)
 {
   unsigned int total = 0;
   while (len > 0)
     {
       LONGEST n = min ((rs->remote_packet_size - 2) / 2, len);
       snprintf (buf2, rs->remote_packet_size,
   "qPart:auxv:read::%s,%s",
   phex_nz (offset, sizeof offset),
   phex_nz (n, sizeof n));
       i = putpkt (buf2);
       if (i < 0)
  return total > 0 ? total : i;
       buf2[0] = '\0';
       getpkt (buf2, rs->remote_packet_size, 0);
       if (packet_ok (buf2, &remote_protocol_qPart_auxv) != PACKET_OK)
  return total > 0 ? total : -1;
       if (buf2[0] == 'O' && buf2[1] == 'K' && buf2[2] == '\0')
  break;

       i = hex2bin (buf2, readbuf, len);
       if (i > 0)
  {
    readbuf = (void *) ((char *) readbuf + i);
    offset += i;
    len -= i;
    total += i;
  }
     }
   return total;
 }
      return -1;

    case 129:
      if (remote_protocol_qPart_dirty.support != PACKET_DISABLE)
 {
   snprintf (buf2, rs->remote_packet_size, "qPart:dirty:read::%lx",
      (long)(offset >> 3));
   i = putpkt (buf2);
   if (i < 0)
     return i;
   buf2[0] = '\0';
   getpkt (buf2, rs->remote_packet_size, 0);
   if (packet_ok (buf2, &remote_protocol_qPart_dirty) != PACKET_OK)
     return -1;
   i = hex2bin (buf2, readbuf, len);
   return i;
 }
      return -1;

    default:
      return -1;
    }



  if (offset == 0 && len == 0)
    return (rs->remote_packet_size);


  if (len < (rs->remote_packet_size))
    return -1;
  len = rs->remote_packet_size;


  if (!remote_desc)
    error ("remote query is only available after target open");

  gdb_assert (annex != ((void*)0));
  gdb_assert (readbuf != ((void*)0));

  *p2++ = 'q';
  *p2++ = query_type;





  i = 0;
  while (annex[i] && (i < ((rs->remote_packet_size) - 8)))
    {

      gdb_assert (isprint (annex[i]) && annex[i] != '$' && annex[i] != '#');
      *p2++ = annex[i];
      i++;
    }
  *p2 = '\0';
  gdb_assert (annex[i] == '\0');

  i = putpkt (buf2);
  if (i < 0)
    return i;

  getpkt (readbuf, len, 0);

  return strlen (readbuf);
}
