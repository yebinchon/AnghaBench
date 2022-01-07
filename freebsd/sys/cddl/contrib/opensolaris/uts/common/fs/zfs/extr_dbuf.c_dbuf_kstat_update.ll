; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf.c_dbuf_kstat_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf.c_dbuf_kstat_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_30__, %struct.TYPE_28__, %struct.TYPE_26__, %struct.TYPE_24__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8* }

@KSTAT_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@dbuf_caches = common dso_local global %struct.TYPE_22__* null, align 8
@DB_DBUF_METADATA_CACHE = common dso_local global i64 0, align 8
@DB_DBUF_CACHE = common dso_local global i64 0, align 8
@dbuf_hash_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32)* @dbuf_kstat_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbuf_kstat_update(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__* %9, %struct.TYPE_21__** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @KSTAT_WRITE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EACCES, align 4
  %15 = call i32 @SET_ERROR(i32 %14)
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** @dbuf_caches, align 8
  %18 = load i64, i64* @DB_DBUF_METADATA_CACHE, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = call i8* @zfs_refcount_count(i32* %20)
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  store i8* %21, i8** %25, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** @dbuf_caches, align 8
  %27 = load i64, i64* @DB_DBUF_CACHE, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = call i8* @zfs_refcount_count(i32* %29)
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  store i8* %30, i8** %34, align 8
  %35 = call i32 (...) @dbuf_cache_target_bytes()
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = call i32 (...) @dbuf_cache_hiwater_bytes()
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = call i32 (...) @dbuf_cache_lowater_bytes()
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* @dbuf_hash_count, align 4
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 8
  br label %55

55:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i8* @zfs_refcount_count(i32*) #1

declare dso_local i32 @dbuf_cache_target_bytes(...) #1

declare dso_local i32 @dbuf_cache_hiwater_bytes(...) #1

declare dso_local i32 @dbuf_cache_lowater_bytes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
