; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pass.c_passpoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pass.c_passpoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.cam_periph = type { i64 }
%struct.pass_softc = type { i32, i32 }

@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @passpoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passpoll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.cam_periph*, align 8
  %8 = alloca %struct.pass_softc*, align 8
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.thread* %2, %struct.thread** %6, align 8
  %10 = load %struct.cdev*, %struct.cdev** %4, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cam_periph*
  store %struct.cam_periph* %13, %struct.cam_periph** %7, align 8
  %14 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  %15 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.pass_softc*
  store %struct.pass_softc* %17, %struct.pass_softc** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @POLLOUT, align 4
  %20 = load i32, i32* @POLLWRNORM, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @POLLIN, align 4
  %25 = load i32, i32* @POLLRDNORM, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %3
  %30 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  %31 = call i32 @cam_periph_lock(%struct.cam_periph* %30)
  %32 = load %struct.pass_softc*, %struct.pass_softc** %8, align 8
  %33 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %32, i32 0, i32 1
  %34 = call i32 @TAILQ_EMPTY(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @POLLIN, align 4
  %39 = load i32, i32* @POLLRDNORM, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %36, %29
  %45 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  %46 = call i32 @cam_periph_unlock(%struct.cam_periph* %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.thread*, %struct.thread** %6, align 8
  %51 = load %struct.pass_softc*, %struct.pass_softc** %8, align 8
  %52 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %51, i32 0, i32 0
  %53 = call i32 @selrecord(%struct.thread* %50, i32* %52)
  br label %54

54:                                               ; preds = %49, %44
  br label %55

55:                                               ; preds = %54, %3
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
