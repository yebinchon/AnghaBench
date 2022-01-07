
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct iovec {int dummy; } ;
typedef TYPE_1__* res_state ;
typedef int on ;
struct TYPE_9__ {int tc; scalar_t__ id; } ;
struct TYPE_8__ {scalar_t__ _vcsock; int _flags; int options; int pfcode; } ;
typedef int ISC_SOCKLEN_T ;
typedef TYPE_2__ HEADER ;


 int Aerror (TYPE_1__*,int ,char*,int,struct sockaddr*,int) ;
 int DE_CONST (int const*,void*) ;
 int Dprint (int,int ) ;
 int DprintQ (int,int ,int *,int) ;

 int ECONNRESET ;
 int EMSGSIZE ;
 int ENOTSOCK ;


 int HFIXEDSZ ;
 scalar_t__ INT16SZ ;
 int PACKETSZ ;
 int Perror (TYPE_1__*,int ,char*,int) ;
 int RES_DEBUG ;
 int RES_F_VC ;
 int RES_PRF_REPLY ;
 int SOCK_CLOEXEC ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_NOSIGPIPE ;
 scalar_t__ _connect (scalar_t__,struct sockaddr*,int) ;
 scalar_t__ _getpeername (scalar_t__,struct sockaddr*,int*) ;
 int _read (scalar_t__,char*,int) ;
 int _setsockopt (scalar_t__,int ,int ,int*,int) ;
 scalar_t__ _socket (int ,int,int ) ;
 scalar_t__ _writev (scalar_t__,struct iovec*,int) ;
 int errno ;
 struct iovec evConsIovec (void*,int) ;
 struct sockaddr* get_nsaddr (TYPE_1__*,int) ;
 int get_salen (struct sockaddr*) ;
 scalar_t__ highestFD ;
 int ns_get16 (int *) ;
 int ns_put16 (int,int *) ;
 int res_nclose (TYPE_1__*) ;
 int sock_eq (struct sockaddr*,struct sockaddr*) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static int
send_vc(res_state statp,
 const u_char *buf, int buflen, u_char *ans, int anssiz,
 int *terrno, int ns)
{
 const HEADER *hp = (const HEADER *) buf;
 HEADER *anhp = (HEADER *) ans;
 struct sockaddr *nsap;
 int nsaplen;
 int truncating, connreset, resplen, n;
 struct iovec iov[2];
 u_short len;
 u_char *cp;
 void *tmp;




 nsap = get_nsaddr(statp, ns);
 nsaplen = get_salen(nsap);

 connreset = 0;
 same_ns:
 truncating = 0;


 if (statp->_vcsock >= 0 && (statp->_flags & RES_F_VC) != 0) {
  struct sockaddr_storage peer;
  ISC_SOCKLEN_T size = sizeof peer;

  if (_getpeername(statp->_vcsock,
    (struct sockaddr *)&peer, &size) < 0 ||
      !sock_eq((struct sockaddr *)&peer, nsap)) {
   res_nclose(statp);
   statp->_flags &= ~RES_F_VC;
  }
 }

 if (statp->_vcsock < 0 || (statp->_flags & RES_F_VC) == 0) {
  if (statp->_vcsock >= 0)
   res_nclose(statp);

  statp->_vcsock = _socket(nsap->sa_family, SOCK_STREAM |
      SOCK_CLOEXEC, 0);

  if (statp->_vcsock > highestFD) {
   res_nclose(statp);
   errno = ENOTSOCK;
  }

  if (statp->_vcsock < 0) {
   switch (errno) {
   case 128:

   case 129:

   case 130:
    Perror(statp, stderr, "socket(vc)", errno);
    return (0);
   default:
    *terrno = errno;
    Perror(statp, stderr, "socket(vc)", errno);
    return (-1);
   }
  }
  errno = 0;
  if (_connect(statp->_vcsock, nsap, nsaplen) < 0) {
   *terrno = errno;
   Aerror(statp, stderr, "connect/vc", errno, nsap,
       nsaplen);
   res_nclose(statp);
   return (0);
  }
  statp->_flags |= RES_F_VC;
 }




 ns_put16((u_short)buflen, (u_char*)&len);
 iov[0] = evConsIovec(&len, INT16SZ);
 DE_CONST(buf, tmp);
 iov[1] = evConsIovec(tmp, buflen);
 if (_writev(statp->_vcsock, iov, 2) != (INT16SZ + buflen)) {
  *terrno = errno;
  Perror(statp, stderr, "write failed", errno);
  res_nclose(statp);
  return (0);
 }



 read_len:
 cp = ans;
 len = INT16SZ;
 while ((n = _read(statp->_vcsock, (char *)cp, (int)len)) > 0) {
  cp += n;
  if ((len -= n) == 0)
   break;
 }
 if (n <= 0) {
  *terrno = errno;
  Perror(statp, stderr, "read failed", errno);
  res_nclose(statp);
  if (*terrno == ECONNRESET && !connreset) {
   connreset = 1;
   res_nclose(statp);
   goto same_ns;
  }
  res_nclose(statp);
  return (0);
 }
 resplen = ns_get16(ans);
 if (resplen > anssiz) {
  Dprint(statp->options & RES_DEBUG,
         (stdout, ";; response truncated\n")
         );
  truncating = 1;
  len = anssiz;
 } else
  len = resplen;
 if (len < HFIXEDSZ) {



  Dprint(statp->options & RES_DEBUG,
         (stdout, ";; undersized: %d\n", len));
  *terrno = EMSGSIZE;
  res_nclose(statp);
  return (0);
 }
 cp = ans;
 while (len != 0 &&
     (n = _read(statp->_vcsock, (char *)cp, (int)len)) > 0) {
  cp += n;
  len -= n;
 }
 if (n <= 0) {
  *terrno = errno;
  Perror(statp, stderr, "read(vc)", errno);
  res_nclose(statp);
  return (0);
 }
 if (truncating) {



  anhp->tc = 1;
  len = resplen - anssiz;
  while (len != 0) {
   char junk[PACKETSZ];

   n = _read(statp->_vcsock, junk,
       (len > sizeof junk) ? sizeof junk : len);
   if (n > 0)
    len -= n;
   else
    break;
  }
 }







 if (hp->id != anhp->id) {
  DprintQ((statp->options & RES_DEBUG) ||
   (statp->pfcode & RES_PRF_REPLY),
   (stdout, ";; old answer (unexpected):\n"),
   ans, (resplen > anssiz) ? anssiz: resplen);
  goto read_len;
 }





 return (resplen);
}
