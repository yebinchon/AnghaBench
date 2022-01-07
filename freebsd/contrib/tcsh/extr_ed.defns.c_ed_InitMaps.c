
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KEYCMD ;





 int MapsAreInited ;
 int NT_NUM_KEYS ;
 size_t* _toebcdic ;
 int ed_InitEmacsMaps () ;
 int ed_InitVIMaps () ;

void
ed_InitMaps(void)
{
    if (MapsAreInited)
 return;







    {
 KEYCMD temp[NT_NUM_KEYS];
 static KEYCMD *const list[3] = { 130, 128, 129 };
 int i, table;

 for (table=0; table<3; ++table)
 {

     for (i = 0; i < NT_NUM_KEYS; i++) {
  temp[i] = list[table][i];
     }

     for (i = 0; i < NT_NUM_KEYS; i++) {
  list[table][_toebcdic[i]] = temp[i];
     }
 }
    }





    ed_InitEmacsMaps();


    MapsAreInited = 1;
}
