; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_handle_get_from_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_handle_get_from_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__, i32*, i32*, i32*, i32*, i32*, i8* }
%struct.TYPE_14__ = type { i32*, i32* }
%struct.TYPE_13__ = type { i64 }

@SA_HDL_SHARED = common dso_local global i64 0, align 8
@sa_cache = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@SA_BONUS = common dso_local global i32 0, align 4
@sa_evict_sync = common dso_local global i32 0, align 4
@DMU_OT_SA = common dso_local global i64 0, align 8
@DMU_OT_ZNODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa_handle_get_from_db(i32* %0, i32* %1, i8* %2, i64 %3, %struct.TYPE_12__** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_12__** %4, %struct.TYPE_12__*** %10, align 8
  store i32 0, i32* %11, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %13, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @SA_HDL_SHARED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32*, i32** %7, align 8
  %20 = call %struct.TYPE_12__* @dmu_buf_get_user(i32* %19)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %13, align 8
  br label %21

21:                                               ; preds = %18, %5
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %23 = icmp eq %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %73

24:                                               ; preds = %21
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %14, align 8
  %25 = load i32, i32* @sa_cache, align 4
  %26 = load i32, i32* @KM_SLEEP, align 4
  %27 = call %struct.TYPE_12__* @kmem_cache_alloc(i32 %25, i32 %26)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %13, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 5
  store i32* %37, i32** %39, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 4
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  store i32* null, i32** %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %50 = load i32, i32* @SA_BONUS, align 4
  %51 = call i32 @sa_build_index(%struct.TYPE_12__* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @SA_HDL_SHARED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %24
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* @sa_evict_sync, align 4
  %59 = call i32 @dmu_buf_init_user(%struct.TYPE_14__* %57, i32 %58, i32* null, i32* null)
  %60 = load i32*, i32** %7, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = call %struct.TYPE_12__* @dmu_buf_set_user_ie(i32* %60, %struct.TYPE_14__* %62)
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %14, align 8
  br label %64

64:                                               ; preds = %55, %24
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %66 = icmp ne %struct.TYPE_12__* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* @sa_cache, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %70 = call i32 @kmem_cache_free(i32 %68, %struct.TYPE_12__* %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %71, %struct.TYPE_12__** %13, align 8
  br label %72

72:                                               ; preds = %67, %64
  br label %73

73:                                               ; preds = %72, %21
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %75 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %75, align 8
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_12__* @dmu_buf_get_user(i32*) #1

declare dso_local %struct.TYPE_12__* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @sa_build_index(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dmu_buf_init_user(%struct.TYPE_14__*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @dmu_buf_set_user_ie(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
