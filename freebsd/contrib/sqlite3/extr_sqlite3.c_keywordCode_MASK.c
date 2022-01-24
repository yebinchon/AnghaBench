#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int* aKWCode ; 
 scalar_t__* aKWHash ; 
 int* aKWLen ; 
 scalar_t__* aKWNext ; 
 size_t* aKWOffset ; 
 int FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char const FUNC2 (char const) ; 
 char* zKWText ; 

__attribute__((used)) static int FUNC3(const char *z, int n, int *pType){
  int i, j;
  const char *zKW;
  if( n>=2 ){
    i = ((FUNC0(z[0])*4) ^ (FUNC0(z[n-1])*3) ^ n) % 127;
    for(i=((int)aKWHash[i])-1; i>=0; i=((int)aKWNext[i])-1){
      if( aKWLen[i]!=n ) continue;
      j = 0;
      zKW = &zKWText[aKWOffset[i]];
#ifdef SQLITE_ASCII
      while( j<n && (z[j]&~0x20)==zKW[j] ){ j++; }
#endif
#ifdef SQLITE_EBCDIC
      while( j<n && toupper(z[j])==zKW[j] ){ j++; }
#endif
      if( j<n ) continue;
      FUNC1( i==0 ); /* REINDEX */
      FUNC1( i==1 ); /* INDEXED */
      FUNC1( i==2 ); /* INDEX */
      FUNC1( i==3 ); /* DESC */
      FUNC1( i==4 ); /* ESCAPE */
      FUNC1( i==5 ); /* EACH */
      FUNC1( i==6 ); /* CHECK */
      FUNC1( i==7 ); /* KEY */
      FUNC1( i==8 ); /* BEFORE */
      FUNC1( i==9 ); /* FOREIGN */
      FUNC1( i==10 ); /* FOR */
      FUNC1( i==11 ); /* IGNORE */
      FUNC1( i==12 ); /* REGEXP */
      FUNC1( i==13 ); /* EXPLAIN */
      FUNC1( i==14 ); /* INSTEAD */
      FUNC1( i==15 ); /* ADD */
      FUNC1( i==16 ); /* DATABASE */
      FUNC1( i==17 ); /* AS */
      FUNC1( i==18 ); /* SELECT */
      FUNC1( i==19 ); /* TABLE */
      FUNC1( i==20 ); /* LEFT */
      FUNC1( i==21 ); /* THEN */
      FUNC1( i==22 ); /* END */
      FUNC1( i==23 ); /* DEFERRABLE */
      FUNC1( i==24 ); /* ELSE */
      FUNC1( i==25 ); /* EXCLUDE */
      FUNC1( i==26 ); /* DELETE */
      FUNC1( i==27 ); /* TEMPORARY */
      FUNC1( i==28 ); /* TEMP */
      FUNC1( i==29 ); /* OR */
      FUNC1( i==30 ); /* ISNULL */
      FUNC1( i==31 ); /* NULLS */
      FUNC1( i==32 ); /* SAVEPOINT */
      FUNC1( i==33 ); /* INTERSECT */
      FUNC1( i==34 ); /* TIES */
      FUNC1( i==35 ); /* NOTNULL */
      FUNC1( i==36 ); /* NOT */
      FUNC1( i==37 ); /* NO */
      FUNC1( i==38 ); /* NULL */
      FUNC1( i==39 ); /* LIKE */
      FUNC1( i==40 ); /* EXCEPT */
      FUNC1( i==41 ); /* TRANSACTION */
      FUNC1( i==42 ); /* ACTION */
      FUNC1( i==43 ); /* ON */
      FUNC1( i==44 ); /* NATURAL */
      FUNC1( i==45 ); /* ALTER */
      FUNC1( i==46 ); /* RAISE */
      FUNC1( i==47 ); /* EXCLUSIVE */
      FUNC1( i==48 ); /* EXISTS */
      FUNC1( i==49 ); /* CONSTRAINT */
      FUNC1( i==50 ); /* INTO */
      FUNC1( i==51 ); /* OFFSET */
      FUNC1( i==52 ); /* OF */
      FUNC1( i==53 ); /* SET */
      FUNC1( i==54 ); /* TRIGGER */
      FUNC1( i==55 ); /* REFERENCES */
      FUNC1( i==56 ); /* UNIQUE */
      FUNC1( i==57 ); /* QUERY */
      FUNC1( i==58 ); /* WITHOUT */
      FUNC1( i==59 ); /* WITH */
      FUNC1( i==60 ); /* OUTER */
      FUNC1( i==61 ); /* RELEASE */
      FUNC1( i==62 ); /* ATTACH */
      FUNC1( i==63 ); /* HAVING */
      FUNC1( i==64 ); /* GLOB */
      FUNC1( i==65 ); /* BEGIN */
      FUNC1( i==66 ); /* INNER */
      FUNC1( i==67 ); /* RANGE */
      FUNC1( i==68 ); /* BETWEEN */
      FUNC1( i==69 ); /* NOTHING */
      FUNC1( i==70 ); /* GROUPS */
      FUNC1( i==71 ); /* GROUP */
      FUNC1( i==72 ); /* CASCADE */
      FUNC1( i==73 ); /* ASC */
      FUNC1( i==74 ); /* DETACH */
      FUNC1( i==75 ); /* CASE */
      FUNC1( i==76 ); /* COLLATE */
      FUNC1( i==77 ); /* CREATE */
      FUNC1( i==78 ); /* CURRENT_DATE */
      FUNC1( i==79 ); /* IMMEDIATE */
      FUNC1( i==80 ); /* JOIN */
      FUNC1( i==81 ); /* INSERT */
      FUNC1( i==82 ); /* MATCH */
      FUNC1( i==83 ); /* PLAN */
      FUNC1( i==84 ); /* ANALYZE */
      FUNC1( i==85 ); /* PRAGMA */
      FUNC1( i==86 ); /* ABORT */
      FUNC1( i==87 ); /* UPDATE */
      FUNC1( i==88 ); /* VALUES */
      FUNC1( i==89 ); /* VIRTUAL */
      FUNC1( i==90 ); /* LAST */
      FUNC1( i==91 ); /* WHEN */
      FUNC1( i==92 ); /* WHERE */
      FUNC1( i==93 ); /* RECURSIVE */
      FUNC1( i==94 ); /* AFTER */
      FUNC1( i==95 ); /* RENAME */
      FUNC1( i==96 ); /* AND */
      FUNC1( i==97 ); /* DEFAULT */
      FUNC1( i==98 ); /* AUTOINCREMENT */
      FUNC1( i==99 ); /* TO */
      FUNC1( i==100 ); /* IN */
      FUNC1( i==101 ); /* CAST */
      FUNC1( i==102 ); /* COLUMN */
      FUNC1( i==103 ); /* COMMIT */
      FUNC1( i==104 ); /* CONFLICT */
      FUNC1( i==105 ); /* CROSS */
      FUNC1( i==106 ); /* CURRENT_TIMESTAMP */
      FUNC1( i==107 ); /* CURRENT_TIME */
      FUNC1( i==108 ); /* CURRENT */
      FUNC1( i==109 ); /* PARTITION */
      FUNC1( i==110 ); /* DEFERRED */
      FUNC1( i==111 ); /* DISTINCT */
      FUNC1( i==112 ); /* IS */
      FUNC1( i==113 ); /* DROP */
      FUNC1( i==114 ); /* PRECEDING */
      FUNC1( i==115 ); /* FAIL */
      FUNC1( i==116 ); /* LIMIT */
      FUNC1( i==117 ); /* FILTER */
      FUNC1( i==118 ); /* REPLACE */
      FUNC1( i==119 ); /* FIRST */
      FUNC1( i==120 ); /* FOLLOWING */
      FUNC1( i==121 ); /* FROM */
      FUNC1( i==122 ); /* FULL */
      FUNC1( i==123 ); /* IF */
      FUNC1( i==124 ); /* ORDER */
      FUNC1( i==125 ); /* RESTRICT */
      FUNC1( i==126 ); /* OTHERS */
      FUNC1( i==127 ); /* OVER */
      FUNC1( i==128 ); /* RIGHT */
      FUNC1( i==129 ); /* ROLLBACK */
      FUNC1( i==130 ); /* ROWS */
      FUNC1( i==131 ); /* ROW */
      FUNC1( i==132 ); /* UNBOUNDED */
      FUNC1( i==133 ); /* UNION */
      FUNC1( i==134 ); /* USING */
      FUNC1( i==135 ); /* VACUUM */
      FUNC1( i==136 ); /* VIEW */
      FUNC1( i==137 ); /* WINDOW */
      FUNC1( i==138 ); /* DO */
      FUNC1( i==139 ); /* BY */
      FUNC1( i==140 ); /* INITIALLY */
      FUNC1( i==141 ); /* ALL */
      FUNC1( i==142 ); /* PRIMARY */
      *pType = aKWCode[i];
      break;
    }
  }
  return n;
}