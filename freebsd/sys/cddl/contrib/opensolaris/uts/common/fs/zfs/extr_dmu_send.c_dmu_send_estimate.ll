; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_dmu_send_estimate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_dmu_send_estimate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_send_estimate(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @dsl_pool_config_held(i32* %20)
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = call i32 @SET_ERROR(i32 %28)
  store i32 %29, i32* %5, align 4
  br label %86

30:                                               ; preds = %4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = call i32 @SET_ERROR(i32 %39)
  store i32 %40, i32* %5, align 4
  br label %86

41:                                               ; preds = %33, %30
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = icmp ne %struct.TYPE_13__* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = call i32 @dsl_dataset_is_before(%struct.TYPE_13__* %45, %struct.TYPE_13__* %46, i32 0)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @EXDEV, align 4
  %51 = call i32 @SET_ERROR(i32 %50)
  store i32 %51, i32* %5, align 4
  br label %86

52:                                               ; preds = %44, %41
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = icmp eq %struct.TYPE_13__* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = call %struct.TYPE_14__* @dsl_dataset_phys(%struct.TYPE_13__* %56)
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %12, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = call %struct.TYPE_14__* @dsl_dataset_phys(%struct.TYPE_13__* %60)
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %13, align 4
  br label %73

64:                                               ; preds = %52
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = call i32 @dsl_dataset_space_written(%struct.TYPE_13__* %65, %struct.TYPE_13__* %66, i32* %14, i32* %13, i32* %12)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %86

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %55
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @dmu_adjust_send_estimate_for_indirects(%struct.TYPE_13__* %74, i32 %75, i32 %76, i32 %77, i32* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %73, %70, %49, %38, %27
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_dataset_is_before(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_14__* @dsl_dataset_phys(%struct.TYPE_13__*) #1

declare dso_local i32 @dsl_dataset_space_written(%struct.TYPE_13__*, %struct.TYPE_13__*, i32*, i32*, i32*) #1

declare dso_local i32 @dmu_adjust_send_estimate_for_indirects(%struct.TYPE_13__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
