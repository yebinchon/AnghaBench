; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/altera/socfpga/extr_socfpga_rstmgr.c_l3remap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/altera/socfpga/extr_socfpga_rstmgr.c_l3remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rstmgr_softc = type { i32 }

@REMAP_MPUZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"l3regs\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't find l3regs node\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@fdtbus_bs_tag = common dso_local global i32 0, align 4
@L3REGS_REMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rstmgr_softc*, i32, i32)* @l3remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l3remap(%struct.rstmgr_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rstmgr_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rstmgr_softc* %0, %struct.rstmgr_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @REMAP_MPUZERO, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %11, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %11, align 4
  br label %24

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %11, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = call i32 @OF_finddevice(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.rstmgr_softc*, %struct.rstmgr_softc** %5, align 8
  %30 = getelementptr inbounds %struct.rstmgr_softc, %struct.rstmgr_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %50

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @OF_getencprop(i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %8, i32 4)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i32, i32* @fdtbus_bs_tag, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @bus_space_map(i32 %38, i32 %39, i32 4, i32 0, i32* %9)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @fdtbus_bs_tag, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @L3REGS_REMAP, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @bus_space_write_4(i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 0, i32* %4, align 4
  br label %50

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %33
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %42, %28
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
