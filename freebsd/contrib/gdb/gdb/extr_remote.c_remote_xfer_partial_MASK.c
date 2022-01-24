#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct target_ops {int dummy; } ;
struct remote_state {int remote_packet_size; } ;
typedef  enum target_object { ____Placeholder_target_object } target_object ;
typedef  int ULONGEST ;
struct TYPE_4__ {int /*<<< orphan*/  support; } ;
typedef  int LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  PACKET_DISABLE ; 
 int /*<<< orphan*/  PACKET_OK ; 
#define  TARGET_OBJECT_AUXV 131 
#define  TARGET_OBJECT_AVR 130 
#define  TARGET_OBJECT_DIRTY 129 
#define  TARGET_OBJECT_KOD 128 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct remote_state* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,void*,int) ; 
 scalar_t__ FUNC6 (char const) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_1__*) ; 
 char* FUNC9 (int,int) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  remote_desc ; 
 TYPE_1__ remote_protocol_qPart_auxv ; 
 TYPE_1__ remote_protocol_qPart_dirty ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,...) ; 
 int FUNC12 (void*) ; 

__attribute__((used)) static LONGEST
FUNC13 (struct target_ops *ops, enum target_object object,
		     const char *annex, void *readbuf, const void *writebuf,
		     ULONGEST offset, LONGEST len)
{
  struct remote_state *rs = FUNC3 ();
  int i;
  char *buf2 = FUNC0 (rs->remote_packet_size);
  char *p2 = &buf2[0];
  char query_type;

  /* Only handle reads.  */
  if (writebuf != NULL || readbuf == NULL)
    return -1;

  /* Map pre-existing objects onto letters.  DO NOT do this for new
     objects!!!  Instead specify new query packets.  */
  switch (object)
    {
    case TARGET_OBJECT_KOD:
      query_type = 'K';
      break;
    case TARGET_OBJECT_AVR:
      query_type = 'R';
      break;

    case TARGET_OBJECT_AUXV:
      if (remote_protocol_qPart_auxv.support != PACKET_DISABLE)
	{
	  unsigned int total = 0;
	  while (len > 0)
	    {
	      LONGEST n = FUNC7 ((rs->remote_packet_size - 2) / 2, len);
	      FUNC11 (buf2, rs->remote_packet_size,
			"qPart:auxv:read::%s,%s",
			FUNC9 (offset, sizeof offset),
			FUNC9 (n, sizeof n));
	      i = FUNC10 (buf2);
	      if (i < 0)
		return total > 0 ? total : i;
	      buf2[0] = '\0';
	      FUNC4 (buf2, rs->remote_packet_size, 0);
	      if (FUNC8 (buf2, &remote_protocol_qPart_auxv) != PACKET_OK)
		return total > 0 ? total : -1;
	      if (buf2[0] == 'O' && buf2[1] == 'K' && buf2[2] == '\0')
		break;		/* Got EOF indicator.  */
	      /* Got some data.  */
	      i = FUNC5 (buf2, readbuf, len);
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

    case TARGET_OBJECT_DIRTY:
      if (remote_protocol_qPart_dirty.support != PACKET_DISABLE)
	{
	  FUNC11 (buf2, rs->remote_packet_size, "qPart:dirty:read::%lx",
		    (long)(offset >> 3));
	  i = FUNC10 (buf2);
	  if (i < 0)
	    return i;
	  buf2[0] = '\0';
	  FUNC4 (buf2, rs->remote_packet_size, 0);
	  if (FUNC8 (buf2, &remote_protocol_qPart_dirty) != PACKET_OK)
	    return -1;
	  i = FUNC5 (buf2, readbuf, len);
	  return i;
	}
      return -1;

    default:
      return -1;
    }

  /* Note: a zero OFFSET and LEN can be used to query the minimum
     buffer size.  */
  if (offset == 0 && len == 0)
    return (rs->remote_packet_size);
  /* Minimum outbuf size is (rs->remote_packet_size) - if bufsiz is
     not large enough let the caller.  */
  if (len < (rs->remote_packet_size))
    return -1;
  len = rs->remote_packet_size;

  /* except for querying the minimum buffer size, target must be open */
  if (!remote_desc)
    FUNC1 ("remote query is only available after target open");

  FUNC2 (annex != NULL);
  FUNC2 (readbuf != NULL);

  *p2++ = 'q';
  *p2++ = query_type;

  /* we used one buffer char for the remote protocol q command and another
     for the query type.  As the remote protocol encapsulation uses 4 chars
     plus one extra in case we are debugging (remote_debug),
     we have PBUFZIZ - 7 left to pack the query string */
  i = 0;
  while (annex[i] && (i < ((rs->remote_packet_size) - 8)))
    {
      /* Bad caller may have sent forbidden characters.  */
      FUNC2 (FUNC6 (annex[i]) && annex[i] != '$' && annex[i] != '#');
      *p2++ = annex[i];
      i++;
    }
  *p2 = '\0';
  FUNC2 (annex[i] == '\0');

  i = FUNC10 (buf2);
  if (i < 0)
    return i;

  FUNC4 (readbuf, len, 0);

  return FUNC12 (readbuf);
}