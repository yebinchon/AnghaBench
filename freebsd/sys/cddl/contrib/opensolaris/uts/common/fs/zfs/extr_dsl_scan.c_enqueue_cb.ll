; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_enqueue_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_enqueue_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64, i32 }

@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, i8*)* @enqueue_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enqueue_cb(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %10, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @FTAG, align 4
  %20 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_10__* %15, i64 %18, i32 %19, %struct.TYPE_11__** %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %81

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %63, %25
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = call %struct.TYPE_12__* @dsl_dataset_phys(%struct.TYPE_11__* %27)
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = call %struct.TYPE_12__* @dsl_dataset_phys(%struct.TYPE_11__* %34)
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @FTAG, align 4
  %39 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_10__* %33, i64 %37, i32 %38, %struct.TYPE_11__** %11)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = load i32, i32* @FTAG, align 4
  %45 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %81

47:                                               ; preds = %32
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %49 = call %struct.TYPE_12__* @dsl_dataset_phys(%struct.TYPE_11__* %48)
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = load i32, i32* @FTAG, align 4
  %59 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %57, i32 %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %61 = load i32, i32* @FTAG, align 4
  %62 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %60, i32 %61)
  store i32 0, i32* %4, align 4
  br label %81

63:                                               ; preds = %47
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = load i32, i32* @FTAG, align 4
  %66 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %64, i32 %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %8, align 8
  br label %26

68:                                               ; preds = %26
  %69 = load i32*, i32** %10, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = call %struct.TYPE_12__* @dsl_dataset_phys(%struct.TYPE_11__* %73)
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @scan_ds_queue_insert(i32* %69, i64 %72, i32 %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = load i32, i32* @FTAG, align 4
  %80 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %78, i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %68, %56, %42, %23
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_10__*, i64, i32, %struct.TYPE_11__**) #1

declare dso_local %struct.TYPE_12__* @dsl_dataset_phys(%struct.TYPE_11__*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @scan_ds_queue_insert(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
