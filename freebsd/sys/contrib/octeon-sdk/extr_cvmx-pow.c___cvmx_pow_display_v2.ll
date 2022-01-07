; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pow.c___cvmx_pow_display_v2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pow.c___cvmx_pow_display_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__**, %struct.TYPE_31__**, %struct.TYPE_29__** }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { i64, i32, i64 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32, i64 }
%struct.TYPE_31__ = type { %struct.TYPE_30__, %struct.TYPE_23__ }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_28__ = type { i32, i64 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, i64 }
%struct.TYPE_26__ = type { i32, i32, i64, i64 }
%struct.TYPE_25__ = type { i64, i32, i32, i32 }
%struct.TYPE_24__ = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"cvmx_pow_dump: Buffer too small, pow_dump_t = 0x%x, buffer_size = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Free List: qnum_head=%d, qnum_tail=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Free0: valid=%d, one=%d, head=%llu, tail=%llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Free1: valid=%d, one=%d, head=%llu, tail=%llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Free2: valid=%d, one=%d, head=%llu, tail=%llu\0A\00", align 1
@CVMX_POW_LIST_FREE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Core %d State: tag=%s,0x%08x\00", align 1
@CVMX_POW_TAG_TYPE_NULL_NULL = common dso_local global i64 0, align 8
@CVMX_POW_LIST_CORE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c" grp=%d\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c" wqp=0x%016llx\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c" index=%d\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" head\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" prev=%d\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" tail\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" next=%d\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c" pend_switch=%d\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c" pend_desched=%d\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c" pend_nosched=%d\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c" (Waiting for work)\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c" (Getting work)\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c" pend_alloc_we=%d\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c" pend_nosched_clr=%d\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c" pend_index=%d\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c" pending tag=%s,0x%08x\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c" pend_wqp=0x%016llx\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CVMX_POW_LIST_NOSCHED = common dso_local global i32 0, align 4
@CVMX_POW_LIST_DESCHED = common dso_local global i32 0, align 4
@CVMX_POW_LIST_INPUT = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [27 x i8] c"Queue %da Memory (is head)\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Queue %da Memory\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Queue %db Memory (is head)\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Queue %db Memory\00", align 1
@.str.28 = private unnamed_addr constant [52 x i8] c"Entry %d(%-10s): tag=%s,0x%08x grp=%d wqp=0x%016llx\00", align 1
@__cvmx_pow_list_names = common dso_local global i8** null, align 8
@.str.29 = private unnamed_addr constant [12 x i8] c" nosched=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cvmx_pow_display_v2(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2048 x i64], align 16
  %11 = alloca [3 x i32], align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %5, align 8
  %27 = call i32 (...) @cvmx_pow_get_num_entries()
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 24
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 24, i32 %31)
  br label %1169

33:                                               ; preds = %2
  %34 = getelementptr inbounds [2048 x i64], [2048 x i64]* %10, i64 0, i64 0
  %35 = call i32 @memset(i64* %34, i32 0, i32 16384)
  %36 = call i32 (...) @cvmx_octeon_num_cores()
  store i32 %36, i32* %7, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %39, i64 0
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %41, i64 4
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %49, i64 0
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i64 5
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %59, i64 0
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i64 6
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %65, i32* %66, align 4
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %69, i64 0
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i64 4
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  store i32 %75, i32* %76, align 4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %79, i64 0
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i64 5
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  store i32 %85, i32* %86, align 4
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %89, i64 0
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %91, i64 6
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  store i32 %95, i32* %96, align 4
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %99, i64 0
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i64 4
  %103 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %105, i32* %106, align 4
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %109, i64 0
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %111, i64 5
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %115, i32* %116, align 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %119, i64 0
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i64 6
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %125, i32* %126, align 4
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %129, i64 0
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i64 4
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %135, i32* %136, align 4
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %139, i64 0
  %141 = load %struct.TYPE_31__*, %struct.TYPE_31__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i64 5
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %145, i32* %146, align 4
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %149, i64 0
  %151 = load %struct.TYPE_31__*, %struct.TYPE_31__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %151, i64 6
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %155, i32* %156, align 4
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %159, i64 0
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i64 4
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %15, align 4
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %168, i64 0
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i64 4
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %16, align 4
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %175, i32 %176)
  %178 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @CAST64(i32 %183)
  %185 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @CAST64(i32 %186)
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %179, i32 %181, i32 %184, i32 %187)
  %189 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @CAST64(i32 %194)
  %196 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @CAST64(i32 %197)
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %190, i32 %192, i32 %195, i32 %198)
  %200 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @CAST64(i32 %205)
  %207 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @CAST64(i32 %208)
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %201, i32 %203, i32 %206, i32 %209)
  %211 = load i32, i32* %15, align 4
  store i32 %211, i32* %17, align 4
  br label %212

212:                                              ; preds = %252, %33
  %213 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %224, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br label %224

224:                                              ; preds = %220, %216, %212
  %225 = phi i1 [ true, %216 ], [ true, %212 ], [ %223, %220 ]
  br i1 %225, label %226, label %272

226:                                              ; preds = %224
  %227 = load i32, i32* %17, align 4
  %228 = srem i32 %227, 3
  store i32 %228, i32* %18, align 4
  %229 = load i32, i32* %18, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %18, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %232, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %226
  %239 = load i32, i32* %18, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %240
  store i32 0, i32* %241, align 4
  br label %242

242:                                              ; preds = %238, %226
  %243 = load i32, i32* %18, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i64, i64* @CVMX_POW_LIST_FREE, align 8
  %248 = getelementptr inbounds [2048 x i64], [2048 x i64]* %10, i64 0, i64 0
  %249 = call i64 @__cvmx_pow_entry_mark_list(i32 %246, i64 %247, i64* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %242
  br label %272

252:                                              ; preds = %242
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %254, align 8
  %256 = load i32, i32* %18, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %255, i64 %260
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i64 4
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %18, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %268
  store i32 %266, i32* %269, align 4
  %270 = load i32, i32* %17, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %17, align 4
  br label %212

272:                                              ; preds = %251, %224
  store i32 0, i32* %8, align 4
  br label %273

273:                                              ; preds = %709, %272
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* %7, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %712

277:                                              ; preds = %273
  store i32 1, i32* %19, align 4
  store i32 2, i32* %20, align 4
  store i32 3, i32* %21, align 4
  store i32 4, i32* %22, align 4
  store i32 5, i32* %23, align 4
  %278 = load i32, i32* %8, align 4
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 2
  %281 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %280, align 8
  %282 = load i32, i32* %8, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %281, i64 %283
  %285 = load %struct.TYPE_29__*, %struct.TYPE_29__** %284, align 8
  %286 = load i32, i32* %21, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = call i8* @OCT_TAG_TYPE_STRING(i64 %291)
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 2
  %295 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %294, align 8
  %296 = load i32, i32* %8, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %295, i64 %297
  %299 = load %struct.TYPE_29__*, %struct.TYPE_29__** %298, align 8
  %300 = load i32, i32* %21, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %278, i8* %292, i32 %305)
  %307 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 2
  %309 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %308, align 8
  %310 = load i32, i32* %8, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %309, i64 %311
  %313 = load %struct.TYPE_29__*, %struct.TYPE_29__** %312, align 8
  %314 = load i32, i32* %21, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @CVMX_POW_TAG_TYPE_NULL_NULL, align 8
  %321 = icmp ne i64 %319, %320
  br i1 %321, label %322, label %449

322:                                              ; preds = %277
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 2
  %325 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %324, align 8
  %326 = load i32, i32* %8, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %325, i64 %327
  %329 = load %struct.TYPE_29__*, %struct.TYPE_29__** %328, align 8
  %330 = load i32, i32* %21, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = load i64, i64* @CVMX_POW_LIST_CORE, align 8
  %337 = load i32, i32* %8, align 4
  %338 = sext i32 %337 to i64
  %339 = add nsw i64 %336, %338
  %340 = getelementptr inbounds [2048 x i64], [2048 x i64]* %10, i64 0, i64 0
  %341 = call i64 @__cvmx_pow_entry_mark_list(i32 %335, i64 %339, i64* %340)
  %342 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %342, i32 0, i32 2
  %344 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %343, align 8
  %345 = load i32, i32* %8, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %344, i64 %346
  %348 = load %struct.TYPE_29__*, %struct.TYPE_29__** %347, align 8
  %349 = load i32, i32* %21, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %348, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %351, i32 0, i32 3
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %354)
  %356 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 2
  %358 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %357, align 8
  %359 = load i32, i32* %8, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %358, i64 %360
  %362 = load %struct.TYPE_29__*, %struct.TYPE_29__** %361, align 8
  %363 = load i32, i32* %22, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %365, i32 0, i32 4
  %367 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @CAST64(i32 %368)
  %370 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %369)
  %371 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %371, i32 0, i32 2
  %373 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %372, align 8
  %374 = load i32, i32* %8, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %373, i64 %375
  %377 = load %struct.TYPE_29__*, %struct.TYPE_29__** %376, align 8
  %378 = load i32, i32* %21, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 4
  %384 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %383)
  %385 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %385, i32 0, i32 2
  %387 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %386, align 8
  %388 = load i32, i32* %8, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %387, i64 %389
  %391 = load %struct.TYPE_29__*, %struct.TYPE_29__** %390, align 8
  %392 = load i32, i32* %23, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %394, i32 0, i32 2
  %396 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %395, i32 0, i32 3
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %401

399:                                              ; preds = %322
  %400 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %416

401:                                              ; preds = %322
  %402 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %402, i32 0, i32 2
  %404 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %403, align 8
  %405 = load i32, i32* %8, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %404, i64 %406
  %408 = load %struct.TYPE_29__*, %struct.TYPE_29__** %407, align 8
  %409 = load i32, i32* %23, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %408, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %411, i32 0, i32 2
  %413 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %414)
  br label %416

416:                                              ; preds = %401, %399
  %417 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %417, i32 0, i32 2
  %419 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %418, align 8
  %420 = load i32, i32* %8, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %419, i64 %421
  %423 = load %struct.TYPE_29__*, %struct.TYPE_29__** %422, align 8
  %424 = load i32, i32* %23, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %426, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %433

431:                                              ; preds = %416
  %432 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %448

433:                                              ; preds = %416
  %434 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %435 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %434, i32 0, i32 2
  %436 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %435, align 8
  %437 = load i32, i32* %8, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %436, i64 %438
  %440 = load %struct.TYPE_29__*, %struct.TYPE_29__** %439, align 8
  %441 = load i32, i32* %23, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %440, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %443, i32 0, i32 2
  %445 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %446)
  br label %448

448:                                              ; preds = %433, %431
  br label %449

449:                                              ; preds = %448, %277
  %450 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %450, i32 0, i32 2
  %452 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %451, align 8
  %453 = load i32, i32* %8, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %452, i64 %454
  %456 = load %struct.TYPE_29__*, %struct.TYPE_29__** %455, align 8
  %457 = load i32, i32* %19, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %456, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %479

464:                                              ; preds = %449
  %465 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %466 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %465, i32 0, i32 2
  %467 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %466, align 8
  %468 = load i32, i32* %8, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %467, i64 %469
  %471 = load %struct.TYPE_29__*, %struct.TYPE_29__** %470, align 8
  %472 = load i32, i32* %19, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %471, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %474, i32 0, i32 1
  %476 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %477)
  br label %479

479:                                              ; preds = %464, %449
  %480 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %481 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %480, i32 0, i32 2
  %482 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %481, align 8
  %483 = load i32, i32* %8, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %482, i64 %484
  %486 = load %struct.TYPE_29__*, %struct.TYPE_29__** %485, align 8
  %487 = load i32, i32* %19, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %486, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %523

494:                                              ; preds = %479
  %495 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %496 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %495, i32 0, i32 2
  %497 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %496, align 8
  %498 = load i32, i32* %8, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %497, i64 %499
  %501 = load %struct.TYPE_29__*, %struct.TYPE_29__** %500, align 8
  %502 = load i32, i32* %19, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %501, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  %508 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %507)
  %509 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %510 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %509, i32 0, i32 2
  %511 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %510, align 8
  %512 = load i32, i32* %8, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %511, i64 %513
  %515 = load %struct.TYPE_29__*, %struct.TYPE_29__** %514, align 8
  %516 = load i32, i32* %19, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %515, i64 %517
  %519 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %519, i32 0, i32 2
  %521 = load i32, i32* %520, align 8
  %522 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %521)
  br label %523

523:                                              ; preds = %494, %479
  %524 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %525 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %524, i32 0, i32 2
  %526 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %525, align 8
  %527 = load i32, i32* %8, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %526, i64 %528
  %530 = load %struct.TYPE_29__*, %struct.TYPE_29__** %529, align 8
  %531 = load i32, i32* %19, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %530, i64 %532
  %534 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %534, i32 0, i32 9
  %536 = load i64, i64* %535, align 8
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %538, label %558

538:                                              ; preds = %523
  %539 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %540 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %539, i32 0, i32 2
  %541 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %540, align 8
  %542 = load i32, i32* %8, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %541, i64 %543
  %545 = load %struct.TYPE_29__*, %struct.TYPE_29__** %544, align 8
  %546 = load i32, i32* %19, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %545, i64 %547
  %549 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %548, i32 0, i32 1
  %550 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %549, i32 0, i32 8
  %551 = load i64, i64* %550, align 8
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %553, label %555

553:                                              ; preds = %538
  %554 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  br label %557

555:                                              ; preds = %538
  %556 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  br label %557

557:                                              ; preds = %555, %553
  br label %558

558:                                              ; preds = %557, %523
  %559 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %560 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %559, i32 0, i32 2
  %561 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %560, align 8
  %562 = load i32, i32* %8, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %561, i64 %563
  %565 = load %struct.TYPE_29__*, %struct.TYPE_29__** %564, align 8
  %566 = load i32, i32* %19, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %565, i64 %567
  %569 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %568, i32 0, i32 1
  %570 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %569, i32 0, i32 3
  %571 = load i32, i32* %570, align 4
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %588

573:                                              ; preds = %558
  %574 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %575 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %574, i32 0, i32 2
  %576 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %575, align 8
  %577 = load i32, i32* %8, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %576, i64 %578
  %580 = load %struct.TYPE_29__*, %struct.TYPE_29__** %579, align 8
  %581 = load i32, i32* %19, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %580, i64 %582
  %584 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %583, i32 0, i32 1
  %585 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %584, i32 0, i32 3
  %586 = load i32, i32* %585, align 4
  %587 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %586)
  br label %588

588:                                              ; preds = %573, %558
  %589 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %590 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %589, i32 0, i32 2
  %591 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %590, align 8
  %592 = load i32, i32* %8, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %591, i64 %593
  %595 = load %struct.TYPE_29__*, %struct.TYPE_29__** %594, align 8
  %596 = load i32, i32* %19, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %595, i64 %597
  %599 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %598, i32 0, i32 1
  %600 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %599, i32 0, i32 4
  %601 = load i32, i32* %600, align 8
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %632

603:                                              ; preds = %588
  %604 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %605 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %604, i32 0, i32 2
  %606 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %605, align 8
  %607 = load i32, i32* %8, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %606, i64 %608
  %610 = load %struct.TYPE_29__*, %struct.TYPE_29__** %609, align 8
  %611 = load i32, i32* %19, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %610, i64 %612
  %614 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %613, i32 0, i32 1
  %615 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %614, i32 0, i32 4
  %616 = load i32, i32* %615, align 8
  %617 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 %616)
  %618 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %619 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %618, i32 0, i32 2
  %620 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %619, align 8
  %621 = load i32, i32* %8, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %620, i64 %622
  %624 = load %struct.TYPE_29__*, %struct.TYPE_29__** %623, align 8
  %625 = load i32, i32* %19, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %624, i64 %626
  %628 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %627, i32 0, i32 1
  %629 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %628, i32 0, i32 5
  %630 = load i32, i32* %629, align 4
  %631 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 %630)
  br label %632

632:                                              ; preds = %603, %588
  %633 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %634 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %633, i32 0, i32 2
  %635 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %634, align 8
  %636 = load i32, i32* %8, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %635, i64 %637
  %639 = load %struct.TYPE_29__*, %struct.TYPE_29__** %638, align 8
  %640 = load i32, i32* %19, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %639, i64 %641
  %643 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %642, i32 0, i32 1
  %644 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %643, i32 0, i32 0
  %645 = load i32, i32* %644, align 8
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %676

647:                                              ; preds = %632
  %648 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %649 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %648, i32 0, i32 2
  %650 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %649, align 8
  %651 = load i32, i32* %8, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %650, i64 %652
  %654 = load %struct.TYPE_29__*, %struct.TYPE_29__** %653, align 8
  %655 = load i32, i32* %19, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %654, i64 %656
  %658 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %657, i32 0, i32 1
  %659 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %658, i32 0, i32 6
  %660 = load i64, i64* %659, align 8
  %661 = call i8* @OCT_TAG_TYPE_STRING(i64 %660)
  %662 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %663 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %662, i32 0, i32 2
  %664 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %663, align 8
  %665 = load i32, i32* %8, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %664, i64 %666
  %668 = load %struct.TYPE_29__*, %struct.TYPE_29__** %667, align 8
  %669 = load i32, i32* %19, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %668, i64 %670
  %672 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %671, i32 0, i32 1
  %673 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %672, i32 0, i32 7
  %674 = load i32, i32* %673, align 8
  %675 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* %661, i32 %674)
  br label %676

676:                                              ; preds = %647, %632
  %677 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %678 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %677, i32 0, i32 2
  %679 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %678, align 8
  %680 = load i32, i32* %8, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %679, i64 %681
  %683 = load %struct.TYPE_29__*, %struct.TYPE_29__** %682, align 8
  %684 = load i32, i32* %20, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %683, i64 %685
  %687 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %686, i32 0, i32 0
  %688 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %687, i32 0, i32 1
  %689 = load i64, i64* %688, align 8
  %690 = icmp ne i64 %689, 0
  br i1 %690, label %691, label %707

691:                                              ; preds = %676
  %692 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %693 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %692, i32 0, i32 2
  %694 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %693, align 8
  %695 = load i32, i32* %8, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %694, i64 %696
  %698 = load %struct.TYPE_29__*, %struct.TYPE_29__** %697, align 8
  %699 = load i32, i32* %20, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %698, i64 %700
  %702 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %701, i32 0, i32 0
  %703 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %702, i32 0, i32 0
  %704 = load i32, i32* %703, align 8
  %705 = call i32 @CAST64(i32 %704)
  %706 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i32 %705)
  br label %707

707:                                              ; preds = %691, %676
  %708 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  br label %709

709:                                              ; preds = %707
  %710 = load i32, i32* %8, align 4
  %711 = add nsw i32 %710, 1
  store i32 %711, i32* %8, align 4
  br label %273

712:                                              ; preds = %273
  %713 = load i32, i32* @CVMX_POW_LIST_NOSCHED, align 4
  %714 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %715 = getelementptr inbounds [2048 x i64], [2048 x i64]* %10, i64 0, i64 0
  %716 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %717 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %716, i32 0, i32 1
  %718 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %717, align 8
  %719 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %718, i64 0
  %720 = load %struct.TYPE_31__*, %struct.TYPE_31__** %719, align 8
  %721 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %720, i64 3
  %722 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %721, i32 0, i32 0
  %723 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %722, i32 0, i32 3
  %724 = load i32, i32* %723, align 4
  %725 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %726 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %725, i32 0, i32 1
  %727 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %726, align 8
  %728 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %727, i64 0
  %729 = load %struct.TYPE_31__*, %struct.TYPE_31__** %728, align 8
  %730 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %729, i64 3
  %731 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %730, i32 0, i32 0
  %732 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %731, i32 0, i32 2
  %733 = load i32, i32* %732, align 4
  %734 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %735 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %734, i32 0, i32 1
  %736 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %735, align 8
  %737 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %736, i64 0
  %738 = load %struct.TYPE_31__*, %struct.TYPE_31__** %737, align 8
  %739 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %738, i64 3
  %740 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %739, i32 0, i32 0
  %741 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %740, i32 0, i32 1
  %742 = load i32, i32* %741, align 4
  %743 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %744 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %743, i32 0, i32 1
  %745 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %744, align 8
  %746 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %745, i64 0
  %747 = load %struct.TYPE_31__*, %struct.TYPE_31__** %746, align 8
  %748 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %747, i64 3
  %749 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %748, i32 0, i32 0
  %750 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %749, i32 0, i32 0
  %751 = load i32, i32* %750, align 4
  %752 = call i32 @__cvmx_pow_display_list_and_walk(i32 %713, %struct.TYPE_22__* %714, i64* %715, i32 %724, i32 %733, i32 %742, i32 %751)
  store i32 0, i32* %9, align 4
  br label %753

753:                                              ; preds = %807, %712
  %754 = load i32, i32* %9, align 4
  %755 = icmp slt i32 %754, 64
  br i1 %755, label %756, label %810

756:                                              ; preds = %753
  %757 = load i32, i32* @CVMX_POW_LIST_DESCHED, align 4
  %758 = load i32, i32* %9, align 4
  %759 = add nsw i32 %757, %758
  %760 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %761 = getelementptr inbounds [2048 x i64], [2048 x i64]* %10, i64 0, i64 0
  %762 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %763 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %762, i32 0, i32 1
  %764 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %763, align 8
  %765 = load i32, i32* %9, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %764, i64 %766
  %768 = load %struct.TYPE_31__*, %struct.TYPE_31__** %767, align 8
  %769 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %768, i64 2
  %770 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %769, i32 0, i32 0
  %771 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %770, i32 0, i32 3
  %772 = load i32, i32* %771, align 4
  %773 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %774 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %773, i32 0, i32 1
  %775 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %774, align 8
  %776 = load i32, i32* %9, align 4
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %775, i64 %777
  %779 = load %struct.TYPE_31__*, %struct.TYPE_31__** %778, align 8
  %780 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %779, i64 2
  %781 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %780, i32 0, i32 0
  %782 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %781, i32 0, i32 2
  %783 = load i32, i32* %782, align 4
  %784 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %785 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %784, i32 0, i32 1
  %786 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %785, align 8
  %787 = load i32, i32* %9, align 4
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %786, i64 %788
  %790 = load %struct.TYPE_31__*, %struct.TYPE_31__** %789, align 8
  %791 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %790, i64 2
  %792 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %791, i32 0, i32 0
  %793 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %792, i32 0, i32 1
  %794 = load i32, i32* %793, align 4
  %795 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %796 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %795, i32 0, i32 1
  %797 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %796, align 8
  %798 = load i32, i32* %9, align 4
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %797, i64 %799
  %801 = load %struct.TYPE_31__*, %struct.TYPE_31__** %800, align 8
  %802 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %801, i64 2
  %803 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %802, i32 0, i32 0
  %804 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %803, i32 0, i32 0
  %805 = load i32, i32* %804, align 4
  %806 = call i32 @__cvmx_pow_display_list_and_walk(i32 %759, %struct.TYPE_22__* %760, i64* %761, i32 %772, i32 %783, i32 %794, i32 %805)
  br label %807

807:                                              ; preds = %756
  %808 = load i32, i32* %9, align 4
  %809 = add nsw i32 %808, 1
  store i32 %809, i32* %9, align 4
  br label %753

810:                                              ; preds = %753
  store i32 0, i32* %9, align 4
  br label %811

811:                                              ; preds = %865, %810
  %812 = load i32, i32* %9, align 4
  %813 = icmp slt i32 %812, 8
  br i1 %813, label %814, label %868

814:                                              ; preds = %811
  %815 = load i32, i32* @CVMX_POW_LIST_INPUT, align 4
  %816 = load i32, i32* %9, align 4
  %817 = add nsw i32 %815, %816
  %818 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %819 = getelementptr inbounds [2048 x i64], [2048 x i64]* %10, i64 0, i64 0
  %820 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %821 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %820, i32 0, i32 1
  %822 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %821, align 8
  %823 = load i32, i32* %9, align 4
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %822, i64 %824
  %826 = load %struct.TYPE_31__*, %struct.TYPE_31__** %825, align 8
  %827 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %826, i64 1
  %828 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %827, i32 0, i32 0
  %829 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %828, i32 0, i32 3
  %830 = load i32, i32* %829, align 4
  %831 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %832 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %831, i32 0, i32 1
  %833 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %832, align 8
  %834 = load i32, i32* %9, align 4
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %833, i64 %835
  %837 = load %struct.TYPE_31__*, %struct.TYPE_31__** %836, align 8
  %838 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %837, i64 1
  %839 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %838, i32 0, i32 0
  %840 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %839, i32 0, i32 2
  %841 = load i32, i32* %840, align 4
  %842 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %843 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %842, i32 0, i32 1
  %844 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %843, align 8
  %845 = load i32, i32* %9, align 4
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %844, i64 %846
  %848 = load %struct.TYPE_31__*, %struct.TYPE_31__** %847, align 8
  %849 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %848, i64 1
  %850 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %849, i32 0, i32 0
  %851 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %850, i32 0, i32 1
  %852 = load i32, i32* %851, align 4
  %853 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %854 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %853, i32 0, i32 1
  %855 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %854, align 8
  %856 = load i32, i32* %9, align 4
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %855, i64 %857
  %859 = load %struct.TYPE_31__*, %struct.TYPE_31__** %858, align 8
  %860 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %859, i64 1
  %861 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %860, i32 0, i32 0
  %862 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %861, i32 0, i32 0
  %863 = load i32, i32* %862, align 4
  %864 = call i32 @__cvmx_pow_display_list_and_walk(i32 %817, %struct.TYPE_22__* %818, i64* %819, i32 %830, i32 %841, i32 %852, i32 %863)
  br label %865

865:                                              ; preds = %814
  %866 = load i32, i32* %9, align 4
  %867 = add nsw i32 %866, 1
  store i32 %867, i32* %9, align 4
  br label %811

868:                                              ; preds = %811
  store i32 0, i32* %9, align 4
  br label %869

869:                                              ; preds = %1002, %868
  %870 = load i32, i32* %9, align 4
  %871 = icmp slt i32 %870, 8
  br i1 %871, label %872, label %1005

872:                                              ; preds = %869
  %873 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %874 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %873, i32 0, i32 1
  %875 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %874, align 8
  %876 = load i32, i32* %9, align 4
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %875, i64 %877
  %879 = load %struct.TYPE_31__*, %struct.TYPE_31__** %878, align 8
  %880 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %879, i64 1
  %881 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %880, i32 0, i32 0
  %882 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %881, i32 0, i32 1
  %883 = load i32, i32* %882, align 4
  %884 = icmp ne i32 %883, 0
  br i1 %884, label %885, label %886

885:                                              ; preds = %872
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i8** %24, align 8
  br label %887

886:                                              ; preds = %872
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i8** %24, align 8
  br label %887

887:                                              ; preds = %886, %885
  %888 = load i8*, i8** %24, align 8
  %889 = load i32, i32* %9, align 4
  %890 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %891 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %890, i32 0, i32 1
  %892 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %891, align 8
  %893 = load i32, i32* %9, align 4
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %892, i64 %894
  %896 = load %struct.TYPE_31__*, %struct.TYPE_31__** %895, align 8
  %897 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %896, i64 1
  %898 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %897, i32 0, i32 0
  %899 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %898, i32 0, i32 3
  %900 = load i32, i32* %899, align 4
  %901 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %902 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %901, i32 0, i32 1
  %903 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %902, align 8
  %904 = load i32, i32* %9, align 4
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %903, i64 %905
  %907 = load %struct.TYPE_31__*, %struct.TYPE_31__** %906, align 8
  %908 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %907, i64 1
  %909 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %908, i32 0, i32 0
  %910 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %909, i32 0, i32 2
  %911 = load i32, i32* %910, align 4
  %912 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %913 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %912, i32 0, i32 1
  %914 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %913, align 8
  %915 = load i32, i32* %9, align 4
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %914, i64 %916
  %918 = load %struct.TYPE_31__*, %struct.TYPE_31__** %917, align 8
  %919 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %918, i64 1
  %920 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %919, i32 0, i32 0
  %921 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %920, i32 0, i32 1
  %922 = load i32, i32* %921, align 4
  %923 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %924 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %923, i32 0, i32 1
  %925 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %924, align 8
  %926 = load i32, i32* %9, align 4
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %925, i64 %927
  %929 = load %struct.TYPE_31__*, %struct.TYPE_31__** %928, align 8
  %930 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %929, i64 1
  %931 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %930, i32 0, i32 0
  %932 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %931, i32 0, i32 0
  %933 = load i32, i32* %932, align 4
  %934 = call i32 @__cvmx_pow_display_list(i8* %888, i32 %889, i32 %900, i32 %911, i32 %922, i32 %933)
  %935 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %936 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %935, i32 0, i32 1
  %937 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %936, align 8
  %938 = load i32, i32* %9, align 4
  %939 = add nsw i32 %938, 8
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %937, i64 %940
  %942 = load %struct.TYPE_31__*, %struct.TYPE_31__** %941, align 8
  %943 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %942, i64 1
  %944 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %943, i32 0, i32 0
  %945 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %944, i32 0, i32 1
  %946 = load i32, i32* %945, align 4
  %947 = icmp ne i32 %946, 0
  br i1 %947, label %948, label %949

948:                                              ; preds = %887
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i8** %24, align 8
  br label %950

949:                                              ; preds = %887
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i8** %24, align 8
  br label %950

950:                                              ; preds = %949, %948
  %951 = load i8*, i8** %24, align 8
  %952 = load i32, i32* %9, align 4
  %953 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %954 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %953, i32 0, i32 1
  %955 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %954, align 8
  %956 = load i32, i32* %9, align 4
  %957 = add nsw i32 %956, 8
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %955, i64 %958
  %960 = load %struct.TYPE_31__*, %struct.TYPE_31__** %959, align 8
  %961 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %960, i64 1
  %962 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %961, i32 0, i32 0
  %963 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %962, i32 0, i32 3
  %964 = load i32, i32* %963, align 4
  %965 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %966 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %965, i32 0, i32 1
  %967 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %966, align 8
  %968 = load i32, i32* %9, align 4
  %969 = add nsw i32 %968, 8
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %967, i64 %970
  %972 = load %struct.TYPE_31__*, %struct.TYPE_31__** %971, align 8
  %973 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %972, i64 1
  %974 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %973, i32 0, i32 0
  %975 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %974, i32 0, i32 2
  %976 = load i32, i32* %975, align 4
  %977 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %978 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %977, i32 0, i32 1
  %979 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %978, align 8
  %980 = load i32, i32* %9, align 4
  %981 = add nsw i32 %980, 8
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %979, i64 %982
  %984 = load %struct.TYPE_31__*, %struct.TYPE_31__** %983, align 8
  %985 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %984, i64 1
  %986 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %985, i32 0, i32 0
  %987 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %986, i32 0, i32 1
  %988 = load i32, i32* %987, align 4
  %989 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %990 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %989, i32 0, i32 1
  %991 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %990, align 8
  %992 = load i32, i32* %9, align 4
  %993 = add nsw i32 %992, 8
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %991, i64 %994
  %996 = load %struct.TYPE_31__*, %struct.TYPE_31__** %995, align 8
  %997 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %996, i64 1
  %998 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %997, i32 0, i32 0
  %999 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %998, i32 0, i32 0
  %1000 = load i32, i32* %999, align 4
  %1001 = call i32 @__cvmx_pow_display_list(i8* %951, i32 %952, i32 %964, i32 %976, i32 %988, i32 %1000)
  br label %1002

1002:                                             ; preds = %950
  %1003 = load i32, i32* %9, align 4
  %1004 = add nsw i32 %1003, 1
  store i32 %1004, i32* %9, align 4
  br label %869

1005:                                             ; preds = %869
  store i32 0, i32* %9, align 4
  br label %1006

1006:                                             ; preds = %1166, %1005
  %1007 = load i32, i32* %9, align 4
  %1008 = load i32, i32* %6, align 4
  %1009 = icmp slt i32 %1007, %1008
  br i1 %1009, label %1010, label %1169

1010:                                             ; preds = %1006
  %1011 = load i32, i32* %9, align 4
  %1012 = load i8**, i8*** @__cvmx_pow_list_names, align 8
  %1013 = load i32, i32* %9, align 4
  %1014 = sext i32 %1013 to i64
  %1015 = getelementptr inbounds [2048 x i64], [2048 x i64]* %10, i64 0, i64 %1014
  %1016 = load i64, i64* %1015, align 8
  %1017 = getelementptr inbounds i8*, i8** %1012, i64 %1016
  %1018 = load i8*, i8** %1017, align 8
  %1019 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %1020 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1019, i32 0, i32 0
  %1021 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %1020, align 8
  %1022 = load i32, i32* %9, align 4
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %1021, i64 %1023
  %1025 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1024, align 8
  %1026 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1025, i64 1
  %1027 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1026, i32 0, i32 3
  %1028 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1027, i32 0, i32 0
  %1029 = load i64, i64* %1028, align 8
  %1030 = call i8* @OCT_TAG_TYPE_STRING(i64 %1029)
  %1031 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %1032 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1031, i32 0, i32 0
  %1033 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %1032, align 8
  %1034 = load i32, i32* %9, align 4
  %1035 = sext i32 %1034 to i64
  %1036 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %1033, i64 %1035
  %1037 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1036, align 8
  %1038 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1037, i64 1
  %1039 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1038, i32 0, i32 3
  %1040 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1039, i32 0, i32 1
  %1041 = load i32, i32* %1040, align 8
  %1042 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %1043 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1042, i32 0, i32 0
  %1044 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %1043, align 8
  %1045 = load i32, i32* %9, align 4
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %1044, i64 %1046
  %1048 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1047, align 8
  %1049 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1048, i64 2
  %1050 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1049, i32 0, i32 1
  %1051 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1050, i32 0, i32 0
  %1052 = load i32, i32* %1051, align 8
  %1053 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %1054 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1053, i32 0, i32 0
  %1055 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %1054, align 8
  %1056 = load i32, i32* %9, align 4
  %1057 = sext i32 %1056 to i64
  %1058 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %1055, i64 %1057
  %1059 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1058, align 8
  %1060 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1059, i64 2
  %1061 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1060, i32 0, i32 1
  %1062 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1061, i32 0, i32 1
  %1063 = load i32, i32* %1062, align 4
  %1064 = call i32 @CAST64(i32 %1063)
  %1065 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.28, i64 0, i64 0), i32 %1011, i8* %1018, i8* %1030, i32 %1041, i32 %1052, i32 %1064)
  %1066 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %1067 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1066, i32 0, i32 0
  %1068 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %1067, align 8
  %1069 = load i32, i32* %9, align 4
  %1070 = sext i32 %1069 to i64
  %1071 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %1068, i64 %1070
  %1072 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1071, align 8
  %1073 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1072, i64 1
  %1074 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1073, i32 0, i32 3
  %1075 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1074, i32 0, i32 2
  %1076 = load i64, i64* %1075, align 8
  %1077 = icmp ne i64 %1076, 0
  br i1 %1077, label %1078, label %1080

1078:                                             ; preds = %1010
  %1079 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %1093

1080:                                             ; preds = %1010
  %1081 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %1082 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1081, i32 0, i32 0
  %1083 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %1082, align 8
  %1084 = load i32, i32* %9, align 4
  %1085 = sext i32 %1084 to i64
  %1086 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %1083, i64 %1085
  %1087 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1086, align 8
  %1088 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1087, i64 4
  %1089 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1088, i32 0, i32 2
  %1090 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1089, i32 0, i32 0
  %1091 = load i32, i32* %1090, align 4
  %1092 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %1091)
  br label %1093

1093:                                             ; preds = %1080, %1078
  %1094 = load i32, i32* %9, align 4
  %1095 = sext i32 %1094 to i64
  %1096 = getelementptr inbounds [2048 x i64], [2048 x i64]* %10, i64 0, i64 %1095
  %1097 = load i64, i64* %1096, align 8
  %1098 = load i32, i32* @CVMX_POW_LIST_DESCHED, align 4
  %1099 = sext i32 %1098 to i64
  %1100 = icmp uge i64 %1097, %1099
  br i1 %1100, label %1101, label %1164

1101:                                             ; preds = %1093
  %1102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %1103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1102, i32 0, i32 0
  %1104 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %1103, align 8
  %1105 = load i32, i32* %9, align 4
  %1106 = sext i32 %1105 to i64
  %1107 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %1104, i64 %1106
  %1108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1107, align 8
  %1109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1108, i64 4
  %1110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1109, i32 0, i32 2
  %1111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1110, i32 0, i32 0
  %1112 = load i32, i32* %1111, align 4
  %1113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %1112)
  %1114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %1115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1114, i32 0, i32 0
  %1116 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %1115, align 8
  %1117 = load i32, i32* %9, align 4
  %1118 = sext i32 %1117 to i64
  %1119 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %1116, i64 %1118
  %1120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1119, align 8
  %1121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1120, i64 1
  %1122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1121, i32 0, i32 1
  %1123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1122, i32 0, i32 2
  %1124 = load i32, i32* %1123, align 8
  %1125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 %1124)
  %1126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %1127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1126, i32 0, i32 0
  %1128 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %1127, align 8
  %1129 = load i32, i32* %9, align 4
  %1130 = sext i32 %1129 to i64
  %1131 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %1128, i64 %1130
  %1132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1131, align 8
  %1133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1132, i64 3
  %1134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1133, i32 0, i32 0
  %1135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1134, i32 0, i32 2
  %1136 = load i64, i64* %1135, align 8
  %1137 = icmp ne i64 %1136, 0
  br i1 %1137, label %1138, label %1163

1138:                                             ; preds = %1101
  %1139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %1140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1139, i32 0, i32 0
  %1141 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %1140, align 8
  %1142 = load i32, i32* %9, align 4
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %1141, i64 %1143
  %1145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1144, align 8
  %1146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1145, i64 3
  %1147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1146, i32 0, i32 0
  %1148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1147, i32 0, i32 0
  %1149 = load i64, i64* %1148, align 8
  %1150 = call i8* @OCT_TAG_TYPE_STRING(i64 %1149)
  %1151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %1152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1151, i32 0, i32 0
  %1153 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %1152, align 8
  %1154 = load i32, i32* %9, align 4
  %1155 = sext i32 %1154 to i64
  %1156 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %1153, i64 %1155
  %1157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1156, align 8
  %1158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1157, i64 3
  %1159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1158, i32 0, i32 0
  %1160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1159, i32 0, i32 1
  %1161 = load i32, i32* %1160, align 8
  %1162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* %1150, i32 %1161)
  br label %1163

1163:                                             ; preds = %1138, %1101
  br label %1164

1164:                                             ; preds = %1163, %1093
  %1165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  br label %1166

1166:                                             ; preds = %1164
  %1167 = load i32, i32* %9, align 4
  %1168 = add nsw i32 %1167, 1
  store i32 %1168, i32* %9, align 4
  br label %1006

1169:                                             ; preds = %30, %1006
  ret void
}

declare dso_local i32 @cvmx_pow_get_num_entries(...) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @cvmx_octeon_num_cores(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @CAST64(i32) #1

declare dso_local i64 @__cvmx_pow_entry_mark_list(i32, i64, i64*) #1

declare dso_local i8* @OCT_TAG_TYPE_STRING(i64) #1

declare dso_local i32 @__cvmx_pow_display_list_and_walk(i32, %struct.TYPE_22__*, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @__cvmx_pow_display_list(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
