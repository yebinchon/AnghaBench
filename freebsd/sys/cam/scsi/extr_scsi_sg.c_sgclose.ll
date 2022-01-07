; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sg.c_sgclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sg.c_sgclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.cam_periph = type { %struct.sg_softc* }
%struct.sg_softc = type { i32 }
%struct.mtx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @sgclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgclose(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.cam_periph*, align 8
  %10 = alloca %struct.sg_softc*, align 8
  %11 = alloca %struct.mtx*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %12 = load %struct.cdev*, %struct.cdev** %5, align 8
  %13 = getelementptr inbounds %struct.cdev, %struct.cdev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.cam_periph*
  store %struct.cam_periph* %15, %struct.cam_periph** %9, align 8
  %16 = load %struct.cam_periph*, %struct.cam_periph** %9, align 8
  %17 = call %struct.mtx* @cam_periph_mtx(%struct.cam_periph* %16)
  store %struct.mtx* %17, %struct.mtx** %11, align 8
  %18 = load %struct.mtx*, %struct.mtx** %11, align 8
  %19 = call i32 @mtx_lock(%struct.mtx* %18)
  %20 = load %struct.cam_periph*, %struct.cam_periph** %9, align 8
  %21 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %20, i32 0, i32 0
  %22 = load %struct.sg_softc*, %struct.sg_softc** %21, align 8
  store %struct.sg_softc* %22, %struct.sg_softc** %10, align 8
  %23 = load %struct.sg_softc*, %struct.sg_softc** %10, align 8
  %24 = getelementptr inbounds %struct.sg_softc, %struct.sg_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.cam_periph*, %struct.cam_periph** %9, align 8
  %28 = call i32 @cam_periph_release_locked(%struct.cam_periph* %27)
  %29 = load %struct.mtx*, %struct.mtx** %11, align 8
  %30 = call i32 @mtx_unlock(%struct.mtx* %29)
  ret i32 0
}

declare dso_local %struct.mtx* @cam_periph_mtx(%struct.cam_periph*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @cam_periph_release_locked(%struct.cam_periph*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
