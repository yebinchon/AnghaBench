
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct _nls_set_hdr {scalar_t__ __nmsgs; scalar_t__ __index; scalar_t__ __setno; } ;
struct _nls_msg_hdr {scalar_t__ __offset; scalar_t__ __msgno; } ;
struct _nls_cat_hdr {scalar_t__ __msg_txt_offset; scalar_t__ __msg_hdr_offset; scalar_t__ __nsets; } ;
typedef TYPE_1__* nl_catd ;
struct TYPE_4__ {scalar_t__ __data; } ;


 int EBADF ;
 int ENOMSG ;
 TYPE_1__* NLERR ;
 int errno ;
 int ntohl (int ) ;

char *
catgets(nl_catd catd, int set_id, int msg_id, const char *s)
{
 struct _nls_cat_hdr *cat_hdr;
 struct _nls_msg_hdr *msg_hdr;
 struct _nls_set_hdr *set_hdr;
 int i, l, r, u;

 if (catd == ((void*)0) || catd == NLERR) {
  errno = EBADF;

  return ((char *)s);
 }

 cat_hdr = (struct _nls_cat_hdr *)catd->__data;
 set_hdr = (struct _nls_set_hdr *)(void *)((char *)catd->__data +
     sizeof(struct _nls_cat_hdr));


 l = 0;
 u = ntohl((u_int32_t)cat_hdr->__nsets) - 1;
 while (l <= u) {
  i = (l + u) / 2;
  r = set_id - ntohl((u_int32_t)set_hdr[i].__setno);

  if (r == 0) {
   msg_hdr = (struct _nls_msg_hdr *)
       (void *)((char *)catd->__data +
       sizeof(struct _nls_cat_hdr) +
       ntohl((u_int32_t)cat_hdr->__msg_hdr_offset));

   l = ntohl((u_int32_t)set_hdr[i].__index);
   u = l + ntohl((u_int32_t)set_hdr[i].__nmsgs) - 1;
   while (l <= u) {
    i = (l + u) / 2;
    r = msg_id -
        ntohl((u_int32_t)msg_hdr[i].__msgno);
    if (r == 0) {
     return ((char *) catd->__data +
         sizeof(struct _nls_cat_hdr) +
         ntohl((u_int32_t)
         cat_hdr->__msg_txt_offset) +
         ntohl((u_int32_t)
         msg_hdr[i].__offset));
    } else if (r < 0) {
     u = i - 1;
    } else {
     l = i + 1;
    }
   }


   goto notfound;

  } else if (r < 0) {
   u = i - 1;
  } else {
   l = i + 1;
  }
 }

notfound:

 errno = ENOMSG;

 return ((char *)s);
}
