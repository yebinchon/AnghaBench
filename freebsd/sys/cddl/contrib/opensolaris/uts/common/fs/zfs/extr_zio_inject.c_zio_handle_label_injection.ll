; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio_inject.c_zio_handle_label_injection.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio_inject.c_zio_handle_label_injection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }

@VDEV_LABEL_START_SIZE = common dso_local global i64 0, align 8
@VDEV_LABEL_END_SIZE = common dso_local global i64 0, align 8
@inject_lock = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@inject_handlers = common dso_local global i32 0, align 4
@ZINJECT_LABEL_FAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zio_handle_label_injection(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %7, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @VDEV_LABEL_START_SIZE, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VDEV_LABEL_END_SIZE, align 8
  %28 = sub nsw i64 %26, %27
  %29 = icmp slt i64 %23, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %99

31:                                               ; preds = %22, %2
  %32 = load i32, i32* @RW_READER, align 4
  %33 = call i32 @rw_enter(i32* @inject_lock, i32 %32)
  %34 = call %struct.TYPE_12__* @list_head(i32* @inject_handlers)
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %6, align 8
  br label %35

35:                                               ; preds = %93, %31
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %96

38:                                               ; preds = %35
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %12, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ZINJECT_LABEL_FAULT, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  br label %93

54:                                               ; preds = %38
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @vdev_label_number(i64 %57, i64 %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @vdev_label_offset(i64 %62, i32 %63, i64 %64)
  store i64 %65, i64* %11, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i64, i64* %12, align 8
  %71 = call i64 @vdev_label_offset(i64 %68, i32 %69, i64 %70)
  store i64 %71, i64* %12, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %76, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %54
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp sle i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %10, align 4
  br label %96

92:                                               ; preds = %86, %82, %54
  br label %93

93:                                               ; preds = %92, %53
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = call %struct.TYPE_12__* @list_next(i32* @inject_handlers, %struct.TYPE_12__* %94)
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %6, align 8
  br label %35

96:                                               ; preds = %90, %35
  %97 = call i32 @rw_exit(i32* @inject_lock)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %96, %30
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @list_head(i32*) #1

declare dso_local i32 @vdev_label_number(i64, i64) #1

declare dso_local i64 @vdev_label_offset(i64, i32, i64) #1

declare dso_local %struct.TYPE_12__* @list_next(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @rw_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
