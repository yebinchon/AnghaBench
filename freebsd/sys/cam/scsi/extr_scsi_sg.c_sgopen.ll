; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sg.c_sgopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sg.c_sgopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.cam_periph = type { i64 }
%struct.sg_softc = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@SG_FLAG_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @sgopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgopen(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.cam_periph*, align 8
  %11 = alloca %struct.sg_softc*, align 8
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
  br label %60

22:                                               ; preds = %4
  %23 = load %struct.thread*, %struct.thread** %9, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @securelevel_gt(i32 %25, i32 1)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %31 = call i32 @cam_periph_release(%struct.cam_periph* %30)
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %60

33:                                               ; preds = %22
  %34 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %35 = call i32 @cam_periph_lock(%struct.cam_periph* %34)
  %36 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %37 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.sg_softc*
  store %struct.sg_softc* %39, %struct.sg_softc** %11, align 8
  %40 = load %struct.sg_softc*, %struct.sg_softc** %11, align 8
  %41 = getelementptr inbounds %struct.sg_softc, %struct.sg_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SG_FLAG_INVALID, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %48 = call i32 @cam_periph_release_locked(%struct.cam_periph* %47)
  %49 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %50 = call i32 @cam_periph_unlock(%struct.cam_periph* %49)
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %5, align 4
  br label %60

52:                                               ; preds = %33
  %53 = load %struct.sg_softc*, %struct.sg_softc** %11, align 8
  %54 = getelementptr inbounds %struct.sg_softc, %struct.sg_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %58 = call i32 @cam_periph_unlock(%struct.cam_periph* %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %52, %46, %29, %20
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i64 @cam_periph_acquire(%struct.cam_periph*) #1

declare dso_local i32 @securelevel_gt(i32, i32) #1

declare dso_local i32 @cam_periph_release(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_release_locked(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
