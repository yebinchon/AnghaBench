
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_list {int used; } ;
typedef int BIO ;


 scalar_t__ BIO_ctrl_pending (int *) ;
 int exit (int ) ;
 int * https_to_ip (struct ip_list*,char const*,char const*) ;
 struct ip_list* pick_random_ip (struct ip_list*) ;
 int printf (char*,char const*,...) ;
 scalar_t__ verb ;
 int wipe_ip_usage (struct ip_list*) ;

__attribute__((used)) static BIO*
https(struct ip_list* ip_list, const char* pathname, const char* urlname)
{
 struct ip_list* ip;
 BIO* bio = ((void*)0);

 wipe_ip_usage(ip_list);
 while( (ip = pick_random_ip(ip_list)) ) {
  ip->used = 1;
  bio = https_to_ip(ip, pathname, urlname);
  if(bio) break;
 }
 if(!bio) {
  if(verb) printf("could not fetch %s\n", pathname);
  exit(0);
 } else {
  if(verb) printf("fetched %s (%d bytes)\n",
   pathname, (int)BIO_ctrl_pending(bio));
 }
 return bio;
}
