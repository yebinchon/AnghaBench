
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int gcry_md_hd_t ;


 scalar_t__ GPG_ERR_NO_ERROR ;
 scalar_t__ TEST_FAIL () ;
 int gcry_md_close (int ) ;
 int gcry_md_get_algo_dlen (int) ;
 scalar_t__ gcry_md_open (int *,int,int ) ;
 unsigned char* gcry_md_read (int ,int) ;
 int gcry_md_write (int ,int const*,size_t const) ;
 int memcpy (int *,unsigned char*,int ) ;

__attribute__((used)) static int gnutls_digest_vector(int algo, size_t num_elem,
    const u8 *addr[], const size_t *len, u8 *mac)
{
 gcry_md_hd_t hd;
 unsigned char *p;
 size_t i;

 if (TEST_FAIL())
  return -1;

 if (gcry_md_open(&hd, algo, 0) != GPG_ERR_NO_ERROR)
  return -1;
 for (i = 0; i < num_elem; i++)
  gcry_md_write(hd, addr[i], len[i]);
 p = gcry_md_read(hd, algo);
 if (p)
  memcpy(mac, p, gcry_md_get_algo_dlen(algo));
 gcry_md_close(hd);
 return 0;
}
