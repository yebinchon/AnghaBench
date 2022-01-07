; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_16__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32*)* @dsl_scan_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_scan_enqueue(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %17 = call i32 @BP_IS_EMBEDDED(%struct.TYPE_18__* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = call i64 @BP_IS_GANG(%struct.TYPE_18__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28, %4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @scan_exec_io(%struct.TYPE_17__* %33, %struct.TYPE_18__* %34, i32 %35, i32* %36, i32* null)
  br label %92

38:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %89, %38
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %42 = call i32 @BP_GET_NDVAS(%struct.TYPE_18__* %41)
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %92

44:                                               ; preds = %39
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @DVA_GET_VDEV(i32* %11)
  %54 = call %struct.TYPE_16__* @vdev_lookup_top(i32* %52, i32 %53)
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %12, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %56 = icmp ne %struct.TYPE_16__* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = call i32 @mutex_enter(i32* %60)
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %44
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %68 = call i32* @scan_io_queue_create(%struct.TYPE_16__* %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  br label %71

71:                                               ; preds = %66, %44
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = icmp ne %struct.TYPE_15__* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @ASSERT(i32 %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @scan_io_queue_insert(i32* %80, %struct.TYPE_18__* %81, i32 %82, i32 %83, i32* %84)
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = call i32 @mutex_exit(i32* %87)
  br label %89

89:                                               ; preds = %71
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %39

92:                                               ; preds = %32, %39
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BP_IS_EMBEDDED(%struct.TYPE_18__*) #1

declare dso_local i64 @BP_IS_GANG(%struct.TYPE_18__*) #1

declare dso_local i32 @scan_exec_io(%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32*, i32*) #1

declare dso_local i32 @BP_GET_NDVAS(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_16__* @vdev_lookup_top(i32*, i32) #1

declare dso_local i32 @DVA_GET_VDEV(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32* @scan_io_queue_create(%struct.TYPE_16__*) #1

declare dso_local i32 @scan_io_queue_insert(i32*, %struct.TYPE_18__*, i32, i32, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
