; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@CAM_PERIPH_LOCKED = common dso_local global i32 0, align 4
@CAM_PERIPH_LOCK_WANTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"caplck\00", align 1
@CAM_PERIPH_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cam_periph_hold(%struct.cam_periph* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %8 = call i64 @cam_periph_acquire(%struct.cam_periph* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %3, align 4
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @cam_periph_assert(%struct.cam_periph* %13, i32 %14)
  br label %16

16:                                               ; preds = %49, %12
  %17 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %18 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CAM_PERIPH_LOCKED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %16
  %24 = load i32, i32* @CAM_PERIPH_LOCK_WANTED, align 4
  %25 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %26 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %30 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @cam_periph_sleep(%struct.cam_periph* %29, %struct.cam_periph* %30, i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %36 = call i32 @cam_periph_release_locked(%struct.cam_periph* %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %56

38:                                               ; preds = %23
  %39 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %40 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %47 = call i32 @cam_periph_release_locked(%struct.cam_periph* %46)
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %3, align 4
  br label %56

49:                                               ; preds = %38
  br label %16

50:                                               ; preds = %16
  %51 = load i32, i32* @CAM_PERIPH_LOCKED, align 4
  %52 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %53 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %45, %34, %10
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @cam_periph_acquire(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_assert(%struct.cam_periph*, i32) #1

declare dso_local i32 @cam_periph_sleep(%struct.cam_periph*, %struct.cam_periph*, i32, i8*, i32) #1

declare dso_local i32 @cam_periph_release_locked(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
