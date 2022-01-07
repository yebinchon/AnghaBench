; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_path_counts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_path_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_path_counts(%struct.cam_path* %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.cam_path*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store %struct.cam_path* %0, %struct.cam_path** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %11 = call i32 (...) @xpt_lock_buses()
  %12 = load i64*, i64** %7, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %5
  %15 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %16 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %15, i32 0, i32 3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %21 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %7, align 8
  store i64 %24, i64* %25, align 8
  br label %28

26:                                               ; preds = %14
  %27 = load i64*, i64** %7, align 8
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %26, %19
  br label %29

29:                                               ; preds = %28, %5
  %30 = load i64*, i64** %8, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %34 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %39 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %8, align 8
  store i64 %42, i64* %43, align 8
  br label %46

44:                                               ; preds = %32
  %45 = load i64*, i64** %8, align 8
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %44, %37
  br label %47

47:                                               ; preds = %46, %29
  %48 = call i32 (...) @xpt_unlock_buses()
  %49 = load i64*, i64** %9, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %53 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = icmp ne %struct.TYPE_7__* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %58 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %9, align 8
  store i64 %61, i64* %62, align 8
  br label %65

63:                                               ; preds = %51
  %64 = load i64*, i64** %9, align 8
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %63, %56
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i64*, i64** %10, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %66
  %70 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %71 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = icmp ne %struct.TYPE_8__* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %76 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %10, align 8
  store i64 %79, i64* %80, align 8
  br label %83

81:                                               ; preds = %69
  %82 = load i64*, i64** %10, align 8
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %81, %74
  br label %84

84:                                               ; preds = %83, %66
  ret void
}

declare dso_local i32 @xpt_lock_buses(...) #1

declare dso_local i32 @xpt_unlock_buses(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
