; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpswp_softc = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"MDIO not ready to write\0A\00", align 1
@MDIO_PHYACCESS_GO = common dso_local global i32 0, align 4
@MDIO_PHYACCESS_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"MDIO timed out during write\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @cpswp_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpswp_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpswp_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.cpswp_softc* @device_get_softc(i32 %12)
  store %struct.cpswp_softc* %13, %struct.cpswp_softc** %10, align 8
  %14 = load %struct.cpswp_softc*, %struct.cpswp_softc** %10, align 8
  %15 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cpswp_softc*, %struct.cpswp_softc** %10, align 8
  %18 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cpswp_miibus_ready(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %60

25:                                               ; preds = %4
  %26 = load i32, i32* @MDIO_PHYACCESS_GO, align 4
  %27 = load i32, i32* @MDIO_PHYACCESS_WRITE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 31
  %31 = shl i32 %30, 21
  %32 = or i32 %28, %31
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 31
  %35 = shl i32 %34, 16
  %36 = or i32 %32, %35
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 65535
  %39 = or i32 %36, %38
  store i32 %39, i32* %11, align 4
  %40 = load %struct.cpswp_softc*, %struct.cpswp_softc** %10, align 8
  %41 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cpswp_softc*, %struct.cpswp_softc** %10, align 8
  %44 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @cpsw_write_4(i32 %42, i32 %45, i32 %46)
  %48 = load %struct.cpswp_softc*, %struct.cpswp_softc** %10, align 8
  %49 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cpswp_softc*, %struct.cpswp_softc** %10, align 8
  %52 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cpswp_miibus_ready(i32 %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %25
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %60

59:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %56, %22
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.cpswp_softc* @device_get_softc(i32) #1

declare dso_local i32 @cpswp_miibus_ready(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @cpsw_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
