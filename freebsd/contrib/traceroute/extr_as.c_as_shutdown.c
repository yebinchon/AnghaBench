
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aslookup {scalar_t__ as_debug; scalar_t__ as_f; } ;


 int fclose (scalar_t__) ;
 int fprintf (scalar_t__,char*) ;
 int free (struct aslookup*) ;

void
as_shutdown(void *_asn)
{
 struct aslookup *asn = _asn;

 (void)fprintf(asn->as_f, "!q\n");
 (void)fclose(asn->as_f);
 free(asn);
}
