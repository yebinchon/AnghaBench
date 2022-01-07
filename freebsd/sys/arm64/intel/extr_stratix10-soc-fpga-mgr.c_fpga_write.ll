; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/intel/extr_stratix10-soc-fpga-mgr.c_fpga_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/intel/extr_stratix10-soc-fpga-mgr.c_fpga_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.fpgamgr_s10_softc* }
%struct.fpgamgr_s10_softc = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.uio = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@SVC_BUF_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @fpga_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fpgamgr_s10_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cdev*, %struct.cdev** %5, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %12, align 8
  store %struct.fpgamgr_s10_softc* %13, %struct.fpgamgr_s10_softc** %8, align 8
  %14 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %8, align 8
  %15 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %14, i32 0, i32 1
  %16 = call i32 @sx_xlock(i32* %15)
  %17 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %8, align 8
  %18 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %8, align 8
  %23 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %22, i32 0, i32 1
  %24 = call i32 @sx_xunlock(i32* %23)
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %4, align 4
  br label %77

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %50, %26
  %28 = load %struct.uio*, %struct.uio** %6, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %27
  %33 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %8, align 8
  %34 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %8, align 8
  %38 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %36, %40
  store i64 %41, i64* %9, align 8
  %42 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %8, align 8
  %43 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SVC_BUF_SIZE, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = load i32, i32* @ENOMEM, align 4
  store i32 %49, i32* %4, align 4
  br label %77

50:                                               ; preds = %32
  %51 = load %struct.uio*, %struct.uio** %6, align 8
  %52 = getelementptr inbounds %struct.uio, %struct.uio* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SVC_BUF_SIZE, align 8
  %55 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %8, align 8
  %56 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %54, %58
  %60 = call i32 @MIN(i64 %53, i64 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i64, i64* %9, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.uio*, %struct.uio** %6, align 8
  %65 = call i32 @uiomove(i8* %62, i32 %63, %struct.uio* %64)
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %8, align 8
  %69 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, %67
  store i64 %72, i64* %70, align 8
  br label %27

73:                                               ; preds = %27
  %74 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %8, align 8
  %75 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %74, i32 0, i32 1
  %76 = call i32 @sx_xunlock(i32* %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %48, %21
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
