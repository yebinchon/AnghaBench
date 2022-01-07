; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_state.c_res_check_reload.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_state.c_res_check_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.__res_state_ext* }
%struct.__res_state_ext = type { i64, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.timespec = type { i64 }
%struct.stat = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }

@RES_INIT = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC_FAST = common dso_local global i32 0, align 4
@_PATH_RESCONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_12__*)* @res_check_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @res_check_reload(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.__res_state_ext*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @RES_INIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %2, align 8
  br label %82

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.__res_state_ext*, %struct.__res_state_ext** %19, align 8
  store %struct.__res_state_ext* %20, %struct.__res_state_ext** %6, align 8
  %21 = load %struct.__res_state_ext*, %struct.__res_state_ext** %6, align 8
  %22 = icmp eq %struct.__res_state_ext* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = load %struct.__res_state_ext*, %struct.__res_state_ext** %6, align 8
  %25 = getelementptr inbounds %struct.__res_state_ext, %struct.__res_state_ext* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %15
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %2, align 8
  br label %82

30:                                               ; preds = %23
  %31 = load i32, i32* @CLOCK_MONOTONIC_FAST, align 4
  %32 = call i64 @clock_gettime(i32 %31, %struct.timespec* %4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.__res_state_ext*, %struct.__res_state_ext** %6, align 8
  %38 = getelementptr inbounds %struct.__res_state_ext, %struct.__res_state_ext* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = load %struct.__res_state_ext*, %struct.__res_state_ext** %6, align 8
  %42 = getelementptr inbounds %struct.__res_state_ext, %struct.__res_state_ext* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %34, %30
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %2, align 8
  br label %82

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.__res_state_ext*, %struct.__res_state_ext** %6, align 8
  %51 = getelementptr inbounds %struct.__res_state_ext, %struct.__res_state_ext* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* @_PATH_RESCONF, align 4
  %53 = call i64 @stat(i32 %52, %struct.stat* %5)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.__res_state_ext*, %struct.__res_state_ext** %6, align 8
  %60 = getelementptr inbounds %struct.__res_state_ext, %struct.__res_state_ext* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %58, %62
  br i1 %63, label %73, label %64

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.__res_state_ext*, %struct.__res_state_ext** %6, align 8
  %69 = getelementptr inbounds %struct.__res_state_ext, %struct.__res_state_ext* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %67, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %64, %55
  %74 = load i32, i32* @RES_INIT, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %73, %64, %47
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %2, align 8
  br label %82

82:                                               ; preds = %80, %45, %28, %13
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %83
}

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
