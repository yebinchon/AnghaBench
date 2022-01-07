; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpswp_softc = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"MDIO not ready to read\0A\00", align 1
@MDIO_PHYACCESS_GO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"MDIO timed out during read\0A\00", align 1
@MDIO_PHYACCESS_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to read from PHY.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @cpswp_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpswp_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpswp_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.cpswp_softc* @device_get_softc(i32 %11)
  store %struct.cpswp_softc* %12, %struct.cpswp_softc** %8, align 8
  %13 = load %struct.cpswp_softc*, %struct.cpswp_softc** %8, align 8
  %14 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cpswp_softc*, %struct.cpswp_softc** %8, align 8
  %17 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cpswp_miibus_ready(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %71

24:                                               ; preds = %3
  %25 = load i32, i32* @MDIO_PHYACCESS_GO, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 31
  %28 = shl i32 %27, 21
  %29 = or i32 %25, %28
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 31
  %32 = shl i32 %31, 16
  %33 = or i32 %29, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.cpswp_softc*, %struct.cpswp_softc** %8, align 8
  %35 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cpswp_softc*, %struct.cpswp_softc** %8, align 8
  %38 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @cpsw_write_4(i32 %36, i32 %39, i32 %40)
  %42 = load %struct.cpswp_softc*, %struct.cpswp_softc** %8, align 8
  %43 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cpswp_softc*, %struct.cpswp_softc** %8, align 8
  %46 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cpswp_miibus_ready(i32 %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %24
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %71

53:                                               ; preds = %24
  %54 = load %struct.cpswp_softc*, %struct.cpswp_softc** %8, align 8
  %55 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cpswp_softc*, %struct.cpswp_softc** %8, align 8
  %58 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cpsw_read_4(i32 %56, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @MDIO_PHYACCESS_ACK, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %65, %53
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, 65535
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %50, %21
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.cpswp_softc* @device_get_softc(i32) #1

declare dso_local i32 @cpswp_miibus_ready(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @cpsw_write_4(i32, i32, i32) #1

declare dso_local i32 @cpsw_read_4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
