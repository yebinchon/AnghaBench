
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef int ns_sect ;
struct TYPE_4__ {scalar_t__ _id; scalar_t__ _flags; scalar_t__* _counts; int const** _sections; int const* _eom; int const* _msg; } ;
typedef TYPE_1__ ns_msg ;


 int EMSGSIZE ;
 int NS_GET16 (scalar_t__,int const*) ;
 int NS_INT16SZ ;
 int RETERR (int ) ;
 int ns_s_max ;
 int ns_skiprr (int const*,int const*,int ,scalar_t__) ;
 int setsection (TYPE_1__*,int) ;

int
ns_initparse(const u_char *msg, int msglen, ns_msg *handle) {
 const u_char *eom = msg + msglen;
 int i;

 handle->_msg = msg;
 handle->_eom = eom;
 if (msg + NS_INT16SZ > eom)
  RETERR(EMSGSIZE);
 NS_GET16(handle->_id, msg);
 if (msg + NS_INT16SZ > eom)
  RETERR(EMSGSIZE);
 NS_GET16(handle->_flags, msg);
 for (i = 0; i < ns_s_max; i++) {
  if (msg + NS_INT16SZ > eom)
   RETERR(EMSGSIZE);
  NS_GET16(handle->_counts[i], msg);
 }
 for (i = 0; i < ns_s_max; i++)
  if (handle->_counts[i] == 0)
   handle->_sections[i] = ((void*)0);
  else {
   int b = ns_skiprr(msg, eom, (ns_sect)i,
       handle->_counts[i]);

   if (b < 0)
    return (-1);
   handle->_sections[i] = msg;
   msg += b;
  }
 if (msg != eom)
  RETERR(EMSGSIZE);
 setsection(handle, ns_s_max);
 return (0);
}
