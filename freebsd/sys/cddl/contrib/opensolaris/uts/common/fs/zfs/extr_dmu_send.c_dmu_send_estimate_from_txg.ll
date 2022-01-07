; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_dmu_send_estimate_from_txg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_dmu_send_estimate_from_txg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.calculate_send_arg = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@TRAVERSE_POST = common dso_local global i32 0, align 4
@dmu_calculate_send_traversal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_send_estimate_from_txg(%struct.TYPE_9__* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.calculate_send_arg, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %10, align 8
  %18 = bitcast %struct.calculate_send_arg* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 12, i1 false)
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @dsl_pool_config_held(i32* %19)
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = call i32 @SET_ERROR(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %59

29:                                               ; preds = %4
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = call %struct.TYPE_10__* @dsl_dataset_phys(%struct.TYPE_9__* %31)
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EXDEV, align 4
  %38 = call i32 @SET_ERROR(i32 %37)
  store i32 %38, i32* %5, align 4
  br label %59

39:                                               ; preds = %29
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* @TRAVERSE_POST, align 4
  %43 = load i32, i32* @dmu_calculate_send_traversal, align 4
  %44 = call i32 @traverse_dataset(%struct.TYPE_9__* %40, i64 %41, i32 %42, i32 %43, %struct.calculate_send_arg* %12)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %59

49:                                               ; preds = %39
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.calculate_send_arg, %struct.calculate_send_arg* %12, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.calculate_send_arg, %struct.calculate_send_arg* %12, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i64*, i64** %9, align 8
  %57 = call i32 @dmu_adjust_send_estimate_for_indirects(%struct.TYPE_9__* %50, i32 %52, i32 %54, i32 %55, i64* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %49, %47, %36, %26
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @dsl_pool_config_held(i32*) #2

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local %struct.TYPE_10__* @dsl_dataset_phys(%struct.TYPE_9__*) #2

declare dso_local i32 @traverse_dataset(%struct.TYPE_9__*, i64, i32, i32, %struct.calculate_send_arg*) #2

declare dso_local i32 @dmu_adjust_send_estimate_for_indirects(%struct.TYPE_9__*, i32, i32, i32, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
