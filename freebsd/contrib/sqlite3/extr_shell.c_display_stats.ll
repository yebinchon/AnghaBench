; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_display_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_display_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [10 x i8] c"%-36s %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Number of output columns:\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Column %d %nname:\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%-36s %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"declared type:\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Memory Used:\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%lld (max %lld) bytes\00", align 1
@SQLITE_STATUS_MEMORY_USED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Number of Outstanding Allocations:\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"%lld (max %lld)\00", align 1
@SQLITE_STATUS_MALLOC_COUNT = common dso_local global i32 0, align 4
@SHFLG_Pagecache = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"Number of Pcache Pages Used:\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"%lld (max %lld) pages\00", align 1
@SQLITE_STATUS_PAGECACHE_USED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"Number of Pcache Overflow Bytes:\00", align 1
@SQLITE_STATUS_PAGECACHE_OVERFLOW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"Largest Allocation:\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%lld bytes\00", align 1
@SQLITE_STATUS_MALLOC_SIZE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"Largest Pcache Allocation:\00", align 1
@SQLITE_STATUS_PAGECACHE_SIZE = common dso_local global i32 0, align 4
@SHFLG_Lookaside = common dso_local global i32 0, align 4
@SQLITE_DBSTATUS_LOOKASIDE_USED = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [50 x i8] c"Lookaside Slots Used:                %d (max %d)\0A\00", align 1
@SQLITE_DBSTATUS_LOOKASIDE_HIT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [41 x i8] c"Successful lookaside attempts:       %d\0A\00", align 1
@SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [41 x i8] c"Lookaside failures due to size:      %d\0A\00", align 1
@SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [41 x i8] c"Lookaside failures due to OOM:       %d\0A\00", align 1
@SQLITE_DBSTATUS_CACHE_USED = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [47 x i8] c"Pager Heap Usage:                    %d bytes\0A\00", align 1
@SQLITE_DBSTATUS_CACHE_HIT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [41 x i8] c"Page cache hits:                     %d\0A\00", align 1
@SQLITE_DBSTATUS_CACHE_MISS = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [41 x i8] c"Page cache misses:                   %d\0A\00", align 1
@SQLITE_DBSTATUS_CACHE_WRITE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [41 x i8] c"Page cache writes:                   %d\0A\00", align 1
@SQLITE_DBSTATUS_CACHE_SPILL = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [41 x i8] c"Page cache spills:                   %d\0A\00", align 1
@SQLITE_DBSTATUS_SCHEMA_USED = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [47 x i8] c"Schema Heap Usage:                   %d bytes\0A\00", align 1
@SQLITE_DBSTATUS_STMT_USED = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [47 x i8] c"Statement Heap/Lookaside Usage:      %d bytes\0A\00", align 1
@SQLITE_STMTSTATUS_FULLSCAN_STEP = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [41 x i8] c"Fullscan Steps:                      %d\0A\00", align 1
@SQLITE_STMTSTATUS_SORT = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [41 x i8] c"Sort Operations:                     %d\0A\00", align 1
@SQLITE_STMTSTATUS_AUTOINDEX = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [41 x i8] c"Autoindex Inserts:                   %d\0A\00", align 1
@SQLITE_STMTSTATUS_VM_STEP = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [41 x i8] c"Virtual Machine Steps:               %d\0A\00", align 1
@SQLITE_STMTSTATUS_REPREPARE = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [41 x i8] c"Reprepare operations:                %d\0A\00", align 1
@SQLITE_STMTSTATUS_RUN = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [41 x i8] c"Number of times run:                 %d\0A\00", align 1
@SQLITE_STMTSTATUS_MEMUSED = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [41 x i8] c"Memory used by prepared stmt:        %d\0A\00", align 1
@SQLITE_STATUS_PARSER_STACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32)* @display_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_stats(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca [100 x i8], align 16
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %304

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %10, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %76

32:                                               ; preds = %24
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 2
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %14, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @sqlite3_column_count(i32* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (i32*, i8*, ...) @raw_printf(i32* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %72, %38
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %47
  %52 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %53 = load i32, i32* %12, align 4
  %54 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 100, i8* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32* %13)
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %57 = load i32*, i32** %14, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @sqlite3_column_name(i32* %57, i32 %58)
  %60 = call i32 @utf8_printf(i32* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %56, i32 %59)
  %61 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 30, i8* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @sqlite3_column_decltype(i32* %68, i32 %69)
  %71 = call i32 @utf8_printf(i32* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %67, i32 %70)
  br label %72

72:                                               ; preds = %51
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %47

75:                                               ; preds = %47
  br label %76

76:                                               ; preds = %75, %32, %24
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %78 = load i32, i32* @SQLITE_STATUS_MEMORY_USED, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @displayStatLine(%struct.TYPE_4__* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = load i32, i32* @SQLITE_STATUS_MALLOC_COUNT, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @displayStatLine(%struct.TYPE_4__* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SHFLG_Pagecache, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %76
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = load i32, i32* @SQLITE_STATUS_PAGECACHE_USED, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @displayStatLine(%struct.TYPE_4__* %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %76
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %98 = load i32, i32* @SQLITE_STATUS_PAGECACHE_OVERFLOW, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @displayStatLine(%struct.TYPE_4__* %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %102 = load i32, i32* @SQLITE_STATUS_MALLOC_SIZE, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @displayStatLine(%struct.TYPE_4__* %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %106 = load i32, i32* @SQLITE_STATUS_PAGECACHE_SIZE, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @displayStatLine(%struct.TYPE_4__* %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32*, i32** %5, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %216

111:                                              ; preds = %96
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @SHFLG_Lookaside, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %156

118:                                              ; preds = %111
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* @SQLITE_DBSTATUS_LOOKASIDE_USED, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @sqlite3_db_status(i32* %119, i32 %120, i32* %8, i32* %9, i32 %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 (i32*, i8*, ...) @raw_printf(i32* %125, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* @SQLITE_DBSTATUS_LOOKASIDE_HIT, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @sqlite3_db_status(i32* %129, i32 %130, i32* %8, i32* %9, i32 %131)
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 (i32*, i8*, ...) @raw_printf(i32* %135, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 %136)
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* @SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @sqlite3_db_status(i32* %138, i32 %139, i32* %8, i32* %9, i32 %140)
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 (i32*, i8*, ...) @raw_printf(i32* %144, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i32 %145)
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* @SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @sqlite3_db_status(i32* %147, i32 %148, i32* %8, i32* %9, i32 %149)
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 (i32*, i8*, ...) @raw_printf(i32* %153, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %118, %111
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* @SQLITE_DBSTATUS_CACHE_USED, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @sqlite3_db_status(i32* %157, i32 %158, i32* %8, i32* %9, i32 %159)
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 (i32*, i8*, ...) @raw_printf(i32* %163, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i32 %164)
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %166 = load i32*, i32** %5, align 8
  %167 = load i32, i32* @SQLITE_DBSTATUS_CACHE_HIT, align 4
  %168 = call i32 @sqlite3_db_status(i32* %166, i32 %167, i32* %8, i32* %9, i32 1)
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i32 (i32*, i8*, ...) @raw_printf(i32* %171, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i32 %172)
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %174 = load i32*, i32** %5, align 8
  %175 = load i32, i32* @SQLITE_DBSTATUS_CACHE_MISS, align 4
  %176 = call i32 @sqlite3_db_status(i32* %174, i32 %175, i32* %8, i32* %9, i32 1)
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = call i32 (i32*, i8*, ...) @raw_printf(i32* %179, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i32 %180)
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %182 = load i32*, i32** %5, align 8
  %183 = load i32, i32* @SQLITE_DBSTATUS_CACHE_WRITE, align 4
  %184 = call i32 @sqlite3_db_status(i32* %182, i32 %183, i32* %8, i32* %9, i32 1)
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 (i32*, i8*, ...) @raw_printf(i32* %187, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i32 %188)
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %190 = load i32*, i32** %5, align 8
  %191 = load i32, i32* @SQLITE_DBSTATUS_CACHE_SPILL, align 4
  %192 = call i32 @sqlite3_db_status(i32* %190, i32 %191, i32* %8, i32* %9, i32 1)
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = call i32 (i32*, i8*, ...) @raw_printf(i32* %195, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0), i32 %196)
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %198 = load i32*, i32** %5, align 8
  %199 = load i32, i32* @SQLITE_DBSTATUS_SCHEMA_USED, align 4
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @sqlite3_db_status(i32* %198, i32 %199, i32* %8, i32* %9, i32 %200)
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = call i32 (i32*, i8*, ...) @raw_printf(i32* %204, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i64 0, i64 0), i32 %205)
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %207 = load i32*, i32** %5, align 8
  %208 = load i32, i32* @SQLITE_DBSTATUS_STMT_USED, align 4
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @sqlite3_db_status(i32* %207, i32 %208, i32* %8, i32* %9, i32 %209)
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = call i32 (i32*, i8*, ...) @raw_printf(i32* %213, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %156, %96
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %299

221:                                              ; preds = %216
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 3
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* @SQLITE_STMTSTATUS_FULLSCAN_STEP, align 4
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @sqlite3_stmt_status(i32* %224, i32 %225, i32 %226)
  store i32 %227, i32* %8, align 4
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %8, align 4
  %232 = call i32 (i32*, i8*, ...) @raw_printf(i32* %230, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0), i32 %231)
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 3
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* @SQLITE_STMTSTATUS_SORT, align 4
  %237 = load i32, i32* %7, align 4
  %238 = call i32 @sqlite3_stmt_status(i32* %235, i32 %236, i32 %237)
  store i32 %238, i32* %8, align 4
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %8, align 4
  %243 = call i32 (i32*, i8*, ...) @raw_printf(i32* %241, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0), i32 %242)
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 3
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* @SQLITE_STMTSTATUS_AUTOINDEX, align 4
  %248 = load i32, i32* %7, align 4
  %249 = call i32 @sqlite3_stmt_status(i32* %246, i32 %247, i32 %248)
  store i32 %249, i32* %8, align 4
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 2
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %8, align 4
  %254 = call i32 (i32*, i8*, ...) @raw_printf(i32* %252, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0), i32 %253)
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 3
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* @SQLITE_STMTSTATUS_VM_STEP, align 4
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @sqlite3_stmt_status(i32* %257, i32 %258, i32 %259)
  store i32 %260, i32* %8, align 4
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 2
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %8, align 4
  %265 = call i32 (i32*, i8*, ...) @raw_printf(i32* %263, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.29, i64 0, i64 0), i32 %264)
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 3
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* @SQLITE_STMTSTATUS_REPREPARE, align 4
  %270 = load i32, i32* %7, align 4
  %271 = call i32 @sqlite3_stmt_status(i32* %268, i32 %269, i32 %270)
  store i32 %271, i32* %8, align 4
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %8, align 4
  %276 = call i32 (i32*, i8*, ...) @raw_printf(i32* %274, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i64 0, i64 0), i32 %275)
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 3
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* @SQLITE_STMTSTATUS_RUN, align 4
  %281 = load i32, i32* %7, align 4
  %282 = call i32 @sqlite3_stmt_status(i32* %279, i32 %280, i32 %281)
  store i32 %282, i32* %8, align 4
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 2
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %8, align 4
  %287 = call i32 (i32*, i8*, ...) @raw_printf(i32* %285, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0), i32 %286)
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 3
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* @SQLITE_STMTSTATUS_MEMUSED, align 4
  %292 = load i32, i32* %7, align 4
  %293 = call i32 @sqlite3_stmt_status(i32* %290, i32 %291, i32 %292)
  store i32 %293, i32* %8, align 4
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 2
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %8, align 4
  %298 = call i32 (i32*, i8*, ...) @raw_printf(i32* %296, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i64 0, i64 0), i32 %297)
  br label %299

299:                                              ; preds = %221, %216
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 2
  %302 = load i32*, i32** %301, align 8
  %303 = call i32 @displayLinuxIoStats(i32* %302)
  store i32 0, i32* %4, align 4
  br label %304

304:                                              ; preds = %299, %23
  %305 = load i32, i32* %4, align 4
  ret i32 %305
}

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i32 @raw_printf(i32*, i8*, ...) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @utf8_printf(i32*, i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_column_name(i32*, i32) #1

declare dso_local i32 @sqlite3_column_decltype(i32*, i32) #1

declare dso_local i32 @displayStatLine(%struct.TYPE_4__*, i8*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_db_status(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @sqlite3_stmt_status(i32*, i32, i32) #1

declare dso_local i32 @displayLinuxIoStats(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
