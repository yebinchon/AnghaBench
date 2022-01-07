
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int anonftp ;
 scalar_t__ connected ;
 int * cout ;
 int data ;
 scalar_t__ epsv4bad ;
 scalar_t__ epsv6bad ;
 int fclose (int *) ;
 int free (int *) ;
 scalar_t__ macnum ;
 int proxy ;
 scalar_t__ unix_proxy ;
 scalar_t__ unix_server ;
 int * username ;

void
cleanuppeer(void)
{

 if (cout)
  (void)fclose(cout);
 cout = ((void*)0);
 connected = 0;
 unix_server = 0;
 unix_proxy = 0;





 if (anonftp == 2)
  anonftp = 0;
 data = -1;
 epsv4bad = 0;
 epsv6bad = 0;
 if (username)
  free(username);
 username = ((void*)0);
 if (!proxy)
  macnum = 0;
}
