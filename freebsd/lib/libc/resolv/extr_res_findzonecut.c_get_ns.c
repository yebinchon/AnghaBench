
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int rrset_ns ;
typedef int res_state ;
typedef int ns_msg ;
typedef int ns_class ;


 int DPRINTF (char*) ;
 int NS_MAXMSG ;
 int do_query (int ,char const*,int ,int ,int *,int *) ;
 int free (int *) ;
 int * malloc (int ) ;
 int ns_s_an ;
 int ns_t_ns ;
 int p_class (int ) ;
 scalar_t__ save_ns (int ,int *,int ,char const*,int ,int,int *) ;

__attribute__((used)) static int
get_ns(res_state statp, const char *zname, ns_class class, int opts,
      rrset_ns *nsrrsp)
{
 u_char *resp;
 ns_msg msg;
 int n;

 resp = malloc(NS_MAXMSG);
 if (resp == ((void*)0))
  return (-1);


 n = do_query(statp, zname, class, ns_t_ns, resp, &msg);
 if (n != 0) {
  DPRINTF(("get_ns: do_query('%s', %s) failed (%d)",
    zname, p_class(class), n));
  free(resp);
  return (-1);
 }


 if (save_ns(statp, &msg, ns_s_an, zname, class, opts, nsrrsp) < 0) {
  DPRINTF(("get_ns save_ns('%s', %s) failed",
    zname, p_class(class)));
  free(resp);
  return (-1);
 }

 free(resp);
 return (0);
}
