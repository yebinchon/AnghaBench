; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_softc = type { %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }

@EMAC_INT_CTL = common dso_local global i32 0, align 4
@EMAC_INT_STA = common dso_local global i32 0, align 4
@EMAC_INT_STA_RX = common dso_local global i32 0, align 4
@EMAC_INT_STA_TX = common dso_local global i32 0, align 4
@EMAC_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @emac_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.emac_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.emac_softc*
  store %struct.emac_softc* %7, %struct.emac_softc** %3, align 8
  %8 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %9 = call i32 @EMAC_LOCK(%struct.emac_softc* %8)
  %10 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %11 = load i32, i32* @EMAC_INT_CTL, align 4
  %12 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %10, i32 %11, i32 0)
  %13 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %14 = load i32, i32* @EMAC_INT_STA, align 4
  %15 = call i32 @EMAC_READ_REG(%struct.emac_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %17 = load i32, i32* @EMAC_INT_STA, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @EMAC_INT_STA_RX, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %26 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %27 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @emac_rxeof(%struct.emac_softc* %25, i32 %28)
  br label %30

30:                                               ; preds = %24, %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @EMAC_INT_STA_TX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @emac_txeof(%struct.emac_softc* %36, i32 %37)
  %39 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %40 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %39, i32 0, i32 0
  %41 = load %struct.ifnet*, %struct.ifnet** %40, align 8
  store %struct.ifnet* %41, %struct.ifnet** %4, align 8
  %42 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 0
  %44 = call i32 @IFQ_DRV_IS_EMPTY(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = call i32 @emac_start_locked(%struct.ifnet* %47)
  br label %49

49:                                               ; preds = %46, %35
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %52 = load i32, i32* @EMAC_INT_CTL, align 4
  %53 = call i32 @EMAC_READ_REG(%struct.emac_softc* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @EMAC_INT_EN, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %58 = load i32, i32* @EMAC_INT_CTL, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %57, i32 %58, i32 %59)
  %61 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %62 = call i32 @EMAC_UNLOCK(%struct.emac_softc* %61)
  ret void
}

declare dso_local i32 @EMAC_LOCK(%struct.emac_softc*) #1

declare dso_local i32 @EMAC_WRITE_REG(%struct.emac_softc*, i32, i32) #1

declare dso_local i32 @EMAC_READ_REG(%struct.emac_softc*, i32) #1

declare dso_local i32 @emac_rxeof(%struct.emac_softc*, i32) #1

declare dso_local i32 @emac_txeof(%struct.emac_softc*, i32) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @emac_start_locked(%struct.ifnet*) #1

declare dso_local i32 @EMAC_UNLOCK(%struct.emac_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
