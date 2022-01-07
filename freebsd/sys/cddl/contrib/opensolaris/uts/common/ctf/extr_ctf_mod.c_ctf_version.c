
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int CTF_VERSION ;
 int MIN (int,int) ;
 int _libctf_version ;

int
ctf_version(int version)
{
 ASSERT(version > 0 && version <= CTF_VERSION);

 if (version > 0)
  _libctf_version = MIN(CTF_VERSION, version);

 return (_libctf_version);
}
