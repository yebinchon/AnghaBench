; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_path_comp_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_path_comp_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { %struct.cam_ed*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.cam_ed = type { i64, %struct.TYPE_4__* }

@CAM_BUS_WILDCARD = common dso_local global i64 0, align 8
@CAM_TARGET_WILDCARD = common dso_local global i64 0, align 8
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpt_path_comp_dev(%struct.cam_path* %0, %struct.cam_ed* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_path*, align 8
  %5 = alloca %struct.cam_ed*, align 8
  %6 = alloca i32, align 4
  store %struct.cam_path* %0, %struct.cam_path** %4, align 8
  store %struct.cam_ed* %1, %struct.cam_ed** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %8 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %11 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %9, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %2
  %17 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %18 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CAM_BUS_WILDCARD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %38

25:                                               ; preds = %16
  %26 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %27 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CAM_BUS_WILDCARD, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 2, i32* %6, align 4
  br label %37

36:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %103

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37, %24
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %41 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %44 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %42, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %39
  %48 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %49 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %55
  br label %71

60:                                               ; preds = %47
  %61 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %62 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 2, i32* %6, align 4
  br label %70

69:                                               ; preds = %60
  store i32 -1, i32* %3, align 4
  br label %103

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %70, %59
  br label %72

72:                                               ; preds = %71, %39
  %73 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %74 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %73, i32 0, i32 0
  %75 = load %struct.cam_ed*, %struct.cam_ed** %74, align 8
  %76 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %77 = icmp ne %struct.cam_ed* %75, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %72
  %79 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %80 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %79, i32 0, i32 0
  %81 = load %struct.cam_ed*, %struct.cam_ed** %80, align 8
  %82 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 1, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %86
  br label %100

91:                                               ; preds = %78
  %92 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %93 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 2, i32* %6, align 4
  br label %99

98:                                               ; preds = %91
  store i32 -1, i32* %3, align 4
  br label %103

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %99, %90
  br label %101

101:                                              ; preds = %100, %72
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %98, %69, %36
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
