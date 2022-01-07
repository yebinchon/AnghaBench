; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pt.c_ptopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pt.c_ptopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.cam_periph = type { i32, i64 }
%struct.pt_softc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@PT_FLAG_DEVICE_INVALID = common dso_local global i32 0, align 4
@PT_FLAG_OPEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ptopen: dev=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @ptopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptopen(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.cam_periph*, align 8
  %11 = alloca %struct.pt_softc*, align 8
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.cdev*, %struct.cdev** %6, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.cam_periph*
  store %struct.cam_periph* %16, %struct.cam_periph** %10, align 8
  %17 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %18 = call i64 @cam_periph_acquire(%struct.cam_periph* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %5, align 4
  br label %71

22:                                               ; preds = %4
  %23 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %24 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.pt_softc*
  store %struct.pt_softc* %26, %struct.pt_softc** %11, align 8
  %27 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %28 = call i32 @cam_periph_lock(%struct.cam_periph* %27)
  %29 = load %struct.pt_softc*, %struct.pt_softc** %11, align 8
  %30 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PT_FLAG_DEVICE_INVALID, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %22
  %36 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %37 = call i32 @cam_periph_release_locked(%struct.cam_periph* %36)
  %38 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %39 = call i32 @cam_periph_unlock(%struct.cam_periph* %38)
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %5, align 4
  br label %71

41:                                               ; preds = %22
  %42 = load %struct.pt_softc*, %struct.pt_softc** %11, align 8
  %43 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PT_FLAG_OPEN, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i32, i32* @PT_FLAG_OPEN, align 4
  %50 = load %struct.pt_softc*, %struct.pt_softc** %11, align 8
  %51 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %58

54:                                               ; preds = %41
  %55 = load i32, i32* @EBUSY, align 4
  store i32 %55, i32* %12, align 4
  %56 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %57 = call i32 @cam_periph_release(%struct.cam_periph* %56)
  br label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %60 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %63 = load %struct.cdev*, %struct.cdev** %6, align 8
  %64 = call i32 @devtoname(%struct.cdev* %63)
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @CAM_DEBUG(i32 %61, i32 %62, i8* %66)
  %68 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %69 = call i32 @cam_periph_unlock(%struct.cam_periph* %68)
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %58, %35, %20
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @cam_periph_acquire(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_release_locked(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_release(%struct.cam_periph*) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @devtoname(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
