
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_nb {int snb_tran; int snb_name; } ;
struct sockaddr {scalar_t__ sa_family; int sa_len; } ;
struct nb_name {int dummy; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_IPX ;
 int EINVAL ;
 int EPROTONOSUPPORT ;
 int NB_ENCNAMELEN ;
 int memcpy (int *,struct sockaddr*,int ) ;
 int nb_name_encode (struct nb_name*,int ) ;
 int nb_name_len (struct nb_name*) ;
 int nb_snballoc (int,struct sockaddr_nb**) ;
 int printf (char*) ;

int
nb_sockaddr(struct sockaddr *peer, struct nb_name *np,
 struct sockaddr_nb **dst)

{
 struct sockaddr_nb *snb;
 int nmlen, error;

 if (peer && (peer->sa_family != AF_INET && peer->sa_family != AF_IPX))
  return EPROTONOSUPPORT;
 nmlen = nb_name_len(np);
 if (nmlen < NB_ENCNAMELEN)
  return EINVAL;
 error = nb_snballoc(nmlen, &snb);
 if (error)
  return error;
 if (nmlen != nb_name_encode(np, snb->snb_name))
  printf("a bug somewhere in the nb_name* code\n");
 if (peer)
  memcpy(&snb->snb_tran, peer, peer->sa_len);
 *dst = snb;
 return 0;
}
