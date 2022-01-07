; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.targ_softc = type { %struct.TYPE_2__, i32, i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@M_TARG = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@TARG_STATE_OPENED = common dso_local global i32 0, align 4
@targcdevdtor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @targopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @targopen(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.targ_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %10 = load i32, i32* @M_TARG, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.targ_softc* @malloc(i32 48, i32 %10, i32 %13)
  store %struct.targ_softc* %14, %struct.targ_softc** %9, align 8
  %15 = load i32, i32* @TARG_STATE_OPENED, align 4
  %16 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %17 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  %18 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %19 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %18, i32 0, i32 6
  store i32* null, i32** %19, align 8
  %20 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %21 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %20, i32 0, i32 5
  store i32* null, i32** %21, align 8
  %22 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %23 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %22, i32 0, i32 4
  %24 = call i32 @TAILQ_INIT(i32* %23)
  %25 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %26 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %25, i32 0, i32 3
  %27 = call i32 @TAILQ_INIT(i32* %26)
  %28 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %29 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %28, i32 0, i32 2
  %30 = call i32 @TAILQ_INIT(i32* %29)
  %31 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %32 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %31, i32 0, i32 1
  %33 = call i32 @TAILQ_INIT(i32* %32)
  %34 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %35 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @knlist_init_mtx(i32* %36, i32* null)
  %38 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %39 = load i32, i32* @targcdevdtor, align 4
  %40 = call i32 @devfs_set_cdevpriv(%struct.targ_softc* %38, i32 %39)
  ret i32 0
}

declare dso_local %struct.targ_softc* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32*) #1

declare dso_local i32 @devfs_set_cdevpriv(%struct.targ_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
