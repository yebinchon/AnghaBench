
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_11__ {int handle; } ;
struct TYPE_12__ {TYPE_1__ file; } ;
struct TYPE_13__ {TYPE_2__ sources; int name; int bad; scalar_t__ total; TYPE_4__* ent; int type; int magic; } ;
typedef TYPE_3__ isc_entropysource_t ;
struct TYPE_14__ {int lock; int mctx; int nsources; int sources; } ;
typedef TYPE_4__ isc_entropy_t ;
typedef int HCRYPTPROV ;
typedef int DWORD ;
typedef int BOOL ;


 int CRYPT_VERIFYCONTEXT ;
 int CryptAcquireContext (int *,int *,int *,int ,int ) ;
 int CryptReleaseContext (int ,int ) ;
 int ENTROPY_SOURCETYPE_FILE ;
 int GetLastError () ;
 int ISC_FALSE ;
 int ISC_LINK_INIT (TYPE_3__*,int ) ;
 int ISC_LIST_APPEND (int ,TYPE_3__*,int ) ;
 int ISC_R_IOERROR ;
 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int PROV_RSA_FULL ;
 int REQUIRE (int ) ;
 int SOURCE_MAGIC ;
 int UNLOCK (int *) ;
 int VALID_ENTROPY (TYPE_4__*) ;
 TYPE_3__* isc_mem_get (int ,int) ;
 int isc_mem_put (int ,TYPE_3__*,int) ;
 int link ;
 int memset (int ,int ,int) ;

isc_result_t
isc_entropy_createfilesource(isc_entropy_t *ent, const char *fname) {
 isc_result_t ret;
 isc_entropysource_t *source;
 HCRYPTPROV hcryptprov;
 DWORD errval;
 BOOL err;

 REQUIRE(VALID_ENTROPY(ent));
 REQUIRE(fname != ((void*)0));

 LOCK(&ent->lock);

 source = ((void*)0);




 err = CryptAcquireContext(&hcryptprov, ((void*)0), ((void*)0), PROV_RSA_FULL,
      CRYPT_VERIFYCONTEXT);
 if (!err){
  errval = GetLastError();
  ret = ISC_R_IOERROR;
  goto errout;
 }

 source = isc_mem_get(ent->mctx, sizeof(isc_entropysource_t));
 if (source == ((void*)0)) {
  ret = ISC_R_NOMEMORY;
  goto closecontext;
 }




 source->magic = SOURCE_MAGIC;
 source->type = ENTROPY_SOURCETYPE_FILE;
 source->ent = ent;
 source->total = 0;
 source->bad = ISC_FALSE;
 memset(source->name, 0, sizeof(source->name));
 ISC_LINK_INIT(source, link);
 source->sources.file.handle = hcryptprov;




 ISC_LIST_APPEND(ent->sources, source, link);
 ent->nsources++;

 UNLOCK(&ent->lock);
 return (ISC_R_SUCCESS);

 closecontext:
 CryptReleaseContext(hcryptprov, 0);

 errout:
 if (source != ((void*)0))
  isc_mem_put(ent->mctx, source, sizeof(isc_entropysource_t));

 UNLOCK(&ent->lock);

 return (ret);
}
