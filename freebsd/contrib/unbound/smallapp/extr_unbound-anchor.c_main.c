
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_load_SSL_strings () ;
 int ERR_load_crypto_strings () ;
 int HTTPS_PORT ;
 int OPENSSL_INIT_ADD_ALL_CIPHERS ;
 int OPENSSL_INIT_ADD_ALL_DIGESTS ;
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ;
 int OPENSSL_INIT_LOAD_SSL_STRINGS ;
 int OPENSSL_init_crypto (int,int *) ;
 int OPENSSL_init_ssl (int ,int *) ;
 int OpenSSL_add_all_algorithms () ;
 char* P7SIGNER ;
 char* P7SNAME ;
 char* ROOT_ANCHOR_FILE ;
 char* ROOT_CERT_FILE ;
 int SSL_library_init () ;
 char* URLNAME ;
 char* XMLNAME ;
 int atoi (char*) ;
 int do_list_builtin () ;
 int do_root_update_work (char const*,char const*,char const*,char const*,char const*,char const*,char const*,char const*,char const*,int,int,int,int,int) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int usage () ;
 int verb ;

int main(int argc, char* argv[])
{
 int c;
 const char* root_anchor_file = ROOT_ANCHOR_FILE;
 const char* root_cert_file = ROOT_CERT_FILE;
 const char* urlname = URLNAME;
 const char* xmlname = XMLNAME;
 const char* p7sname = P7SNAME;
 const char* p7signer = P7SIGNER;
 const char* res_conf = ((void*)0);
 const char* root_hints = ((void*)0);
 const char* debugconf = ((void*)0);
 int dolist=0, ip4only=0, ip6only=0, force=0, port = HTTPS_PORT;
 int res_conf_fallback = 0;

 while( (c=getopt(argc, argv, "46C:FRP:a:c:f:hln:r:s:u:vx:")) != -1) {
  switch(c) {
  case 'l':
   dolist = 1;
   break;
  case '4':
   ip4only = 1;
   break;
  case '6':
   ip6only = 1;
   break;
  case 'a':
   root_anchor_file = optarg;
   break;
  case 'c':
   root_cert_file = optarg;
   break;
  case 'u':
   urlname = optarg;
   break;
  case 'x':
   xmlname = optarg;
   break;
  case 's':
   p7sname = optarg;
   break;
  case 'n':
   p7signer = optarg;
   break;
  case 'f':
   res_conf = optarg;
   break;
  case 'r':
   root_hints = optarg;
   break;
  case 'R':
   res_conf_fallback = 1;
   break;
  case 'C':
   debugconf = optarg;
   break;
  case 'F':
   force = 1;
   break;
  case 'P':
   port = atoi(optarg);
   break;
  case 'v':
   verb++;
   break;
  case '?':
  case 'h':
  default:
   usage();
  }
 }
 argc -= optind;

 if(argc != 0)
  usage();





 ERR_load_SSL_strings();


 OpenSSL_add_all_algorithms();






 (void)SSL_library_init();




 if(dolist) do_list_builtin();

 return do_root_update_work(root_anchor_file, root_cert_file, urlname,
  xmlname, p7sname, p7signer, res_conf, root_hints, debugconf,
  ip4only, ip6only, force, res_conf_fallback, port);
}
