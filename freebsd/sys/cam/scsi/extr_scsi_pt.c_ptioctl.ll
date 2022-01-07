; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pt.c_ptioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pt.c_ptioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.cam_periph = type { i64 }
%struct.pt_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@pterror = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @ptioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.cam_periph*, align 8
  %12 = alloca %struct.pt_softc*, align 8
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.cdev*, %struct.cdev** %6, align 8
  %15 = getelementptr inbounds %struct.cdev, %struct.cdev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.cam_periph*
  store %struct.cam_periph* %17, %struct.cam_periph** %11, align 8
  %18 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %19 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.pt_softc*
  store %struct.pt_softc* %21, %struct.pt_softc** %12, align 8
  %22 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %23 = call i32 @cam_periph_lock(%struct.cam_periph* %22)
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %55 [
    i32 129, label %25
    i32 128, label %41
  ]

25:                                               ; preds = %5
  %26 = load %struct.pt_softc*, %struct.pt_softc** %12, align 8
  %27 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 1000
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.pt_softc*, %struct.pt_softc** %12, align 8
  %32 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 1000
  %35 = load i64, i64* %8, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32 %34, i32* %36, align 4
  br label %40

37:                                               ; preds = %25
  %38 = load i64, i64* %8, align 8
  %39 = inttoptr i64 %38 to i32*
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %30
  br label %61

41:                                               ; preds = %5
  %42 = load i64, i64* %8, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %13, align 4
  br label %61

48:                                               ; preds = %41
  %49 = load i64, i64* %8, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 1000
  %53 = load %struct.pt_softc*, %struct.pt_softc** %12, align 8
  %54 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %61

55:                                               ; preds = %5
  %56 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* @pterror, align 4
  %60 = call i32 @cam_periph_ioctl(%struct.cam_periph* %56, i32 %57, i64 %58, i32 %59)
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %55, %48, %46, %40
  %62 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %63 = call i32 @cam_periph_unlock(%struct.cam_periph* %62)
  %64 = load i32, i32* %13, align 4
  ret i32 %64
}

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_ioctl(%struct.cam_periph*, i32, i64, i32) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
