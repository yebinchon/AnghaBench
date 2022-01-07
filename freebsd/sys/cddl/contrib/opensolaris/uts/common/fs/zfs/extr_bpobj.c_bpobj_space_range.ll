; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_bpobj.c_bpobj_space_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_bpobj.c_bpobj_space_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.space_range_arg = type { i64, i64, i64, i64, i64, i32, i32 }

@TXG_INITIAL = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i64 0, align 8
@space_range_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpobj_space_range(%struct.TYPE_6__* %0, i64 %1, i64 %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.space_range_arg, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = bitcast %struct.space_range_arg* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 48, i1 false)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = call i32 @bpobj_is_open(%struct.TYPE_6__* %17)
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @TXG_INITIAL, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %6
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @UINT64_MAX, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = load i64*, i64** %11, align 8
  %35 = load i64*, i64** %12, align 8
  %36 = load i64*, i64** %13, align 8
  %37 = call i32 @bpobj_space(%struct.TYPE_6__* %33, i64* %34, i64* %35, i64* %36)
  store i32 %37, i32* %7, align 4
  br label %61

38:                                               ; preds = %27, %23, %6
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dmu_objset_spa(i32 %41)
  %43 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %14, i32 0, i32 5
  store i32 %42, i32* %43, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %14, i32 0, i32 4
  store i64 %44, i64* %45, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %14, i32 0, i32 3
  store i64 %46, i64* %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = load i32, i32* @space_range_cb, align 4
  %50 = call i32 @bpobj_iterate_nofree(%struct.TYPE_6__* %48, i32 %49, %struct.space_range_arg* %14, i32* null)
  store i32 %50, i32* %15, align 4
  %51 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %14, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %11, align 8
  store i64 %52, i64* %53, align 8
  %54 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %14, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %12, align 8
  store i64 %55, i64* %56, align 8
  %57 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %14, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %13, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %38, %32
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @bpobj_is_open(%struct.TYPE_6__*) #2

declare dso_local i32 @bpobj_space(%struct.TYPE_6__*, i64*, i64*, i64*) #2

declare dso_local i32 @dmu_objset_spa(i32) #2

declare dso_local i32 @bpobj_iterate_nofree(%struct.TYPE_6__*, i32, %struct.space_range_arg*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
