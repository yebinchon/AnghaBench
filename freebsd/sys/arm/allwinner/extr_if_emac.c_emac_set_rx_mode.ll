; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@EMAC_RX_CTL = common dso_local global i32 0, align 4
@EMAC_RX_UCAD = common dso_local global i32 0, align 4
@EMAC_RX_DAF = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@emac_hash_maddr = common dso_local global i32 0, align 4
@EMAC_RX_MCO = common dso_local global i32 0, align 4
@EMAC_RX_MHF = common dso_local global i32 0, align 4
@EMAC_RX_HASH0 = common dso_local global i32 0, align 4
@EMAC_RX_HASH1 = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@EMAC_RX_BCO = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@EMAC_RX_PA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_softc*)* @emac_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_set_rx_mode(%struct.emac_softc* %0) #0 {
  %2 = alloca %struct.emac_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.emac_softc* %0, %struct.emac_softc** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %7 = call i32 @EMAC_ASSERT_LOCKED(%struct.emac_softc* %6)
  %8 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %9 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %8, i32 0, i32 0
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %12 = load i32, i32* @EMAC_RX_CTL, align 4
  %13 = call i32 @EMAC_READ_REG(%struct.emac_softc* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @EMAC_RX_UCAD, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @EMAC_RX_DAF, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFF_ALLMULTI, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 -1, i32* %29, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 -1, i32* %30, align 4
  br label %36

31:                                               ; preds = %1
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = load i32, i32* @emac_hash_maddr, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %35 = call i32 @if_foreach_llmaddr(%struct.ifnet* %32, i32 %33, i32* %34)
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* @EMAC_RX_MCO, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @EMAC_RX_MHF, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %44 = load i32, i32* @EMAC_RX_HASH0, align 4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %43, i32 %44, i32 %46)
  %48 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %49 = load i32, i32* @EMAC_RX_HASH1, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %48, i32 %49, i32 %51)
  %53 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IFF_BROADCAST, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %36
  %60 = load i32, i32* @EMAC_RX_BCO, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @EMAC_RX_MCO, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %59, %36
  %67 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IFF_PROMISC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @EMAC_RX_PA, align 4
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %81

77:                                               ; preds = %66
  %78 = load i32, i32* @EMAC_RX_UCAD, align 4
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %73
  %82 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %83 = load i32, i32* @EMAC_RX_CTL, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %82, i32 %83, i32 %84)
  ret void
}

declare dso_local i32 @EMAC_ASSERT_LOCKED(%struct.emac_softc*) #1

declare dso_local i32 @EMAC_READ_REG(%struct.emac_softc*, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #1

declare dso_local i32 @EMAC_WRITE_REG(%struct.emac_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
