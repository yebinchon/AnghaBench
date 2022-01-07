; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_create_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_create_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.cam_periph = type { i32 }

@M_CAMPATH = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@CAM_RESRC_UNAVAIL = common dso_local global i64 0, align 8
@CAM_REQ_CMP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xpt_create_path(%struct.cam_path** %0, %struct.cam_periph* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.cam_path**, align 8
  %8 = alloca %struct.cam_periph*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cam_path*, align 8
  %13 = alloca i64, align 8
  store %struct.cam_path** %0, %struct.cam_path*** %7, align 8
  store %struct.cam_periph* %1, %struct.cam_periph** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @M_CAMPATH, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = call i64 @malloc(i32 4, i32 %14, i32 %15)
  %17 = inttoptr i64 %16 to %struct.cam_path*
  store %struct.cam_path* %17, %struct.cam_path** %12, align 8
  %18 = load %struct.cam_path*, %struct.cam_path** %12, align 8
  %19 = icmp eq %struct.cam_path* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i64, i64* @CAM_RESRC_UNAVAIL, align 8
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  store i64 %22, i64* %6, align 8
  br label %41

23:                                               ; preds = %5
  %24 = load %struct.cam_path*, %struct.cam_path** %12, align 8
  %25 = load %struct.cam_periph*, %struct.cam_periph** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @xpt_compile_path(%struct.cam_path* %24, %struct.cam_periph* %25, i32 %26, i32 %27, i32 %28)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @CAM_REQ_CMP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.cam_path*, %struct.cam_path** %12, align 8
  %35 = load i32, i32* @M_CAMPATH, align 4
  %36 = call i32 @free(%struct.cam_path* %34, i32 %35)
  store %struct.cam_path* null, %struct.cam_path** %12, align 8
  br label %37

37:                                               ; preds = %33, %23
  %38 = load %struct.cam_path*, %struct.cam_path** %12, align 8
  %39 = load %struct.cam_path**, %struct.cam_path*** %7, align 8
  store %struct.cam_path* %38, %struct.cam_path** %39, align 8
  %40 = load i64, i64* %13, align 8
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %37, %20
  %42 = load i64, i64* %6, align 8
  ret i64 %42
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i64 @xpt_compile_path(%struct.cam_path*, %struct.cam_periph*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.cam_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
