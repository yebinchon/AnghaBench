; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/altera/socfpga/extr_socfpga_a10_manager.c_fpga_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/altera/socfpga/extr_socfpga_a10_manager.c_fpga_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.fpgamgr_a10_softc* }
%struct.fpgamgr_a10_softc = type { i32, i32 }
%struct.uio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @fpga_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fpgamgr_a10_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cdev*, %struct.cdev** %4, align 8
  %10 = getelementptr inbounds %struct.cdev, %struct.cdev* %9, i32 0, i32 0
  %11 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %10, align 8
  store %struct.fpgamgr_a10_softc* %11, %struct.fpgamgr_a10_softc** %7, align 8
  br label %12

12:                                               ; preds = %17, %3
  %13 = load %struct.uio*, %struct.uio** %5, align 8
  %14 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 4
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.uio*, %struct.uio** %5, align 8
  %19 = call i32 @uiomove(i32* %8, i32 4, %struct.uio* %18)
  %20 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %7, align 8
  %21 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %7, align 8
  %24 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @bus_space_write_4(i32 %22, i32 %25, i32 0, i32 %26)
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.uio*, %struct.uio** %5, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %71 [
    i32 3, label %32
    i32 2, label %45
    i32 1, label %58
  ]

32:                                               ; preds = %28
  %33 = load %struct.uio*, %struct.uio** %5, align 8
  %34 = call i32 @uiomove(i32* %8, i32 3, %struct.uio* %33)
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, 16777215
  store i32 %36, i32* %8, align 4
  %37 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %7, align 8
  %38 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %7, align 8
  %41 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @bus_space_write_4(i32 %39, i32 %42, i32 0, i32 %43)
  br label %72

45:                                               ; preds = %28
  %46 = load %struct.uio*, %struct.uio** %5, align 8
  %47 = call i32 @uiomove(i32* %8, i32 2, %struct.uio* %46)
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 65535
  store i32 %49, i32* %8, align 4
  %50 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %7, align 8
  %51 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %7, align 8
  %54 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @bus_space_write_4(i32 %52, i32 %55, i32 0, i32 %56)
  br label %72

58:                                               ; preds = %28
  %59 = load %struct.uio*, %struct.uio** %5, align 8
  %60 = call i32 @uiomove(i32* %8, i32 1, %struct.uio* %59)
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 255
  store i32 %62, i32* %8, align 4
  %63 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %7, align 8
  %64 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %7, align 8
  %67 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @bus_space_write_4(i32 %65, i32 %68, i32 0, i32 %69)
  br label %72

71:                                               ; preds = %28
  br label %72

72:                                               ; preds = %71, %58, %45, %32
  ret i32 0
}

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
