; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam.c_cam_calc_geometry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam.c_cam_calc_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_calc_geometry = type { i64, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@CAM_REQ_CMP_ERR = common dso_local global i8* null, align 8
@CAM_REQ_CMP = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cam_calc_geometry(%struct.ccb_calc_geometry* %0, i32 %1) #0 {
  %3 = alloca %struct.ccb_calc_geometry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ccb_calc_geometry* %0, %struct.ccb_calc_geometry** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %8 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %13 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %14 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i8* %12, i8** %15, align 8
  br label %77

16:                                               ; preds = %2
  %17 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %18 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sdiv i64 1048576, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %26 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %27 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  br label %77

29:                                               ; preds = %16
  %30 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %31 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %35, 1024
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %42 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %41, i32 0, i32 2
  store i32 255, i32* %42, align 4
  %43 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %44 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %43, i32 0, i32 3
  store i32 63, i32* %44, align 8
  br label %50

45:                                               ; preds = %37, %29
  %46 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %47 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %46, i32 0, i32 2
  store i32 64, i32* %47, align 4
  %48 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %49 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %48, i32 0, i32 3
  store i32 32, i32* %49, align 8
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %52 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %55 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %53, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %62 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %63 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  br label %77

65:                                               ; preds = %50
  %66 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %67 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sdiv i32 %68, %69
  %71 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %72 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load i8*, i8** @CAM_REQ_CMP, align 8
  %74 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %3, align 8
  %75 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i8* %73, i8** %76, align 8
  br label %77

77:                                               ; preds = %65, %60, %24, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
