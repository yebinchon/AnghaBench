; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_path_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_path_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@CAM_BUS_WILDCARD = common dso_local global i64 0, align 8
@CAM_TARGET_WILDCARD = common dso_local global i64 0, align 8
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpt_path_comp(%struct.cam_path* %0, %struct.cam_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_path*, align 8
  %5 = alloca %struct.cam_path*, align 8
  %6 = alloca i32, align 4
  store %struct.cam_path* %0, %struct.cam_path** %4, align 8
  store %struct.cam_path* %1, %struct.cam_path** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %8 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %11 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %9, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %16 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CAM_BUS_WILDCARD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %34

23:                                               ; preds = %14
  %24 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %25 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CAM_BUS_WILDCARD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 2, i32* %6, align 4
  br label %33

32:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %103

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33, %22
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %37 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %40 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = icmp ne %struct.TYPE_5__* %38, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %35
  %44 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %45 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %51
  br label %67

56:                                               ; preds = %43
  %57 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %58 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 2, i32* %6, align 4
  br label %66

65:                                               ; preds = %56
  store i32 -1, i32* %3, align 4
  br label %103

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %66, %55
  br label %68

68:                                               ; preds = %67, %35
  %69 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %70 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %73 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = icmp ne %struct.TYPE_6__* %71, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %68
  %77 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %78 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 1, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %84
  br label %100

89:                                               ; preds = %76
  %90 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %91 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 2, i32* %6, align 4
  br label %99

98:                                               ; preds = %89
  store i32 -1, i32* %3, align 4
  br label %103

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %99, %88
  br label %101

101:                                              ; preds = %100, %68
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %98, %65, %32
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
