; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_prefetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_23__, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_28__, %struct.TYPE_26__* }

@zfs_no_scrub_prefetch = common dso_local global i64 0, align 8
@DMU_OT_DNODE = common dso_local global i64 0, align 8
@DMU_OT_OBJSET = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_28__*, i32*)* @dsl_scan_prefetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_scan_prefetch(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %13, %struct.TYPE_27__** %8, align 8
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %9, align 8
  %19 = load i64, i64* @zfs_no_scrub_prefetch, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %103

22:                                               ; preds = %3
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %24 = call i64 @BP_IS_HOLE(%struct.TYPE_28__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %22
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %29, %33
  br i1 %34, label %49, label %35

35:                                               ; preds = %26
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %37 = call i64 @BP_GET_LEVEL(%struct.TYPE_28__* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %41 = call i64 @BP_GET_TYPE(%struct.TYPE_28__* %40)
  %42 = load i64, i64* @DMU_OT_DNODE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %46 = call i64 @BP_GET_TYPE(%struct.TYPE_28__* %45)
  %47 = load i64, i64* @DMU_OT_OBJSET, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %26, %22
  br label %103

50:                                               ; preds = %44, %39, %35
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i64 @dsl_scan_check_prefetch_resume(%struct.TYPE_26__* %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %103

56:                                               ; preds = %50
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %59 = call i32 @scan_prefetch_ctx_add_ref(%struct.TYPE_26__* %57, %struct.TYPE_27__* %58)
  %60 = load i32, i32* @KM_SLEEP, align 4
  %61 = call %struct.TYPE_25__* @kmem_alloc(i32 24, i32 %60)
  store %struct.TYPE_25__* %61, %struct.TYPE_25__** %10, align 8
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 2
  store %struct.TYPE_26__* %62, %struct.TYPE_26__** %64, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %68 = bitcast %struct.TYPE_28__* %66 to i8*
  %69 = bitcast %struct.TYPE_28__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 8, i1 false)
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = call i32 @mutex_enter(i32* %75)
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %80 = call i32* @avl_find(i32* %78, %struct.TYPE_25__* %79, i32* %7)
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %56
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %84 = call i32 @kmem_free(%struct.TYPE_25__* %83, i32 24)
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %87 = call i32 @scan_prefetch_ctx_rele(%struct.TYPE_26__* %85, %struct.TYPE_27__* %86)
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = call i32 @mutex_exit(i32* %89)
  br label %103

91:                                               ; preds = %56
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @avl_insert(i32* %93, %struct.TYPE_25__* %94, i32 %95)
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 1
  %99 = call i32 @cv_broadcast(i32* %98)
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = call i32 @mutex_exit(i32* %101)
  br label %103

103:                                              ; preds = %91, %82, %55, %49, %21
  ret void
}

declare dso_local i64 @BP_IS_HOLE(%struct.TYPE_28__*) #1

declare dso_local i64 @BP_GET_LEVEL(%struct.TYPE_28__*) #1

declare dso_local i64 @BP_GET_TYPE(%struct.TYPE_28__*) #1

declare dso_local i64 @dsl_scan_check_prefetch_resume(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @scan_prefetch_ctx_add_ref(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_25__* @kmem_alloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32* @avl_find(i32*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @scan_prefetch_ctx_rele(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @avl_insert(i32*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
