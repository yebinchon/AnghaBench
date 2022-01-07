
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url_stat {size_t size; } ;
struct url {int dummy; } ;
typedef unsigned char const ucl_curl_cbdata ;
typedef int UT_string ;
typedef int FILE ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLOPT_URL ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,unsigned char const*) ;
 int curl_easy_strerror (int) ;
 int errno ;
 int fclose (int *) ;
 int fetchFreeURL (struct url*) ;
 struct url* fetchParseURL (unsigned char const*) ;
 int * fetchXGet (struct url*,struct url_stat*,char*) ;
 int fread (unsigned char*,size_t,int,int *) ;
 int free (unsigned char*) ;
 unsigned char* malloc (size_t) ;
 int strerror (int ) ;
 int ucl_create_err (int **,char*,...) ;
 unsigned char const* ucl_curl_write_callback ;

bool
ucl_fetch_url (const unsigned char *url, unsigned char **buf, size_t *buflen,
  UT_string **err, bool must_exist)
{
 ucl_create_err (err, "URL support is disabled");
 return 0;

}
