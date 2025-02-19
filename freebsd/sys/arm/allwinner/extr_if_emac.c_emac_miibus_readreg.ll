; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_softc = type { i32 }

@EMAC_MAC_MADR = common dso_local global i32 0, align 4
@EMAC_MAC_MCMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"timeout waiting for mii read\0A\00", align 1
@EMAC_MAC_MRDD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @emac_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.emac_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.emac_softc* @device_get_softc(i32 %10)
  store %struct.emac_softc* %11, %struct.emac_softc** %8, align 8
  %12 = load %struct.emac_softc*, %struct.emac_softc** %8, align 8
  %13 = load i32, i32* @EMAC_MAC_MADR, align 4
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 8
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %12, i32 %13, i32 %17)
  %19 = load %struct.emac_softc*, %struct.emac_softc** %8, align 8
  %20 = load i32, i32* @EMAC_MAC_MCMD, align 4
  %21 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %19, i32 %20, i32 1)
  %22 = load %struct.emac_softc*, %struct.emac_softc** %8, align 8
  %23 = call i32 @emac_miibus_iowait(%struct.emac_softc* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %36

28:                                               ; preds = %3
  %29 = load %struct.emac_softc*, %struct.emac_softc** %8, align 8
  %30 = load i32, i32* @EMAC_MAC_MCMD, align 4
  %31 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %29, i32 %30, i32 0)
  %32 = load %struct.emac_softc*, %struct.emac_softc** %8, align 8
  %33 = load i32, i32* @EMAC_MAC_MRDD, align 4
  %34 = call i32 @EMAC_READ_REG(%struct.emac_softc* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %28, %25
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.emac_softc* @device_get_softc(i32) #1

declare dso_local i32 @EMAC_WRITE_REG(%struct.emac_softc*, i32, i32) #1

declare dso_local i32 @emac_miibus_iowait(%struct.emac_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @EMAC_READ_REG(%struct.emac_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
