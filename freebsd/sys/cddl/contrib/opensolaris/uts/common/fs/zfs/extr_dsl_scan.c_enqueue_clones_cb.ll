; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_enqueue_clones_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_enqueue_clones_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32 }

@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i8*)* @enqueue_clones_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enqueue_clones_cb(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_13__* @dsl_dir_phys(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %77

28:                                               ; preds = %3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @FTAG, align 4
  %34 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_11__* %29, i64 %32, i32 %33, %struct.TYPE_12__** %9)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %77

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %62, %39
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = call %struct.TYPE_14__* @dsl_dataset_phys(%struct.TYPE_12__* %41)
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %50 = call %struct.TYPE_14__* @dsl_dataset_phys(%struct.TYPE_12__* %49)
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @FTAG, align 4
  %54 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_11__* %48, i64 %52, i32 %53, %struct.TYPE_12__** %12)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = load i32, i32* @FTAG, align 4
  %57 = call i32 @dsl_dataset_rele(%struct.TYPE_12__* %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %47
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %77

62:                                               ; preds = %47
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %9, align 8
  br label %40

64:                                               ; preds = %40
  %65 = load i32*, i32** %11, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = call %struct.TYPE_14__* @dsl_dataset_phys(%struct.TYPE_12__* %69)
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @scan_ds_queue_insert(i32* %65, i64 %68, i32 %72)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = load i32, i32* @FTAG, align 4
  %76 = call i32 @dsl_dataset_rele(%struct.TYPE_12__* %74, i32 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %64, %60, %37, %27
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_13__* @dsl_dir_phys(i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_11__*, i64, i32, %struct.TYPE_12__**) #1

declare dso_local %struct.TYPE_14__* @dsl_dataset_phys(%struct.TYPE_12__*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @scan_ds_queue_insert(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
