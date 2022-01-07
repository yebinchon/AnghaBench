; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_softc = type { i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@EMAC_MAC_IPGT = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@EMAC_MAC_IPGT_HD = common dso_local global i32 0, align 4
@EMAC_MAC_IPGT_FD = common dso_local global i32 0, align 4
@EMAC_CTL = common dso_local global i32 0, align 4
@EMAC_CTL_RST = common dso_local global i32 0, align 4
@EMAC_CTL_TX_EN = common dso_local global i32 0, align 4
@EMAC_CTL_RX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @emac_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.emac_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @device_get_softc(i32 %7)
  %9 = bitcast i8* %8 to %struct.emac_softc*
  store %struct.emac_softc* %9, %struct.emac_softc** %3, align 8
  %10 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %11 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @device_get_softc(i32 %12)
  %14 = bitcast i8* %13 to %struct.mii_data*
  store %struct.mii_data* %14, %struct.mii_data** %4, align 8
  %15 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %16 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %15, i32 0, i32 1
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %5, align 8
  %18 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %19 = icmp eq %struct.mii_data* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %22 = icmp eq %struct.ifnet* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %20, %1
  br label %122

31:                                               ; preds = %23
  %32 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %33 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %35 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IFM_ACTIVE, align 4
  %38 = load i32, i32* @IFM_AVALID, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = load i32, i32* @IFM_ACTIVE, align 4
  %42 = load i32, i32* @IFM_AVALID, align 4
  %43 = or i32 %41, %42
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %31
  %46 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %47 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @IFM_SUBTYPE(i32 %48)
  switch i32 %49, label %53 [
    i32 128, label %50
    i32 129, label %50
  ]

50:                                               ; preds = %45, %45
  %51 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %52 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %54

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %50
  br label %55

55:                                               ; preds = %54, %31
  %56 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %57 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %106

60:                                               ; preds = %55
  %61 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %62 = load i32, i32* @EMAC_MAC_IPGT, align 4
  %63 = call i32 @EMAC_READ_REG(%struct.emac_softc* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %65 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @IFM_OPTIONS(i32 %66)
  %68 = load i32, i32* @IFM_FDX, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %60
  %72 = load i32, i32* @EMAC_MAC_IPGT_HD, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @EMAC_MAC_IPGT_FD, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %87

79:                                               ; preds = %60
  %80 = load i32, i32* @EMAC_MAC_IPGT_FD, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* @EMAC_MAC_IPGT_HD, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %79, %71
  %88 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %89 = load i32, i32* @EMAC_MAC_IPGT, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %88, i32 %89, i32 %90)
  %92 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %93 = load i32, i32* @EMAC_CTL, align 4
  %94 = call i32 @EMAC_READ_REG(%struct.emac_softc* %92, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* @EMAC_CTL_RST, align 4
  %96 = load i32, i32* @EMAC_CTL_TX_EN, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @EMAC_CTL_RX_EN, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %103 = load i32, i32* @EMAC_CTL, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %102, i32 %103, i32 %104)
  br label %122

106:                                              ; preds = %55
  %107 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %108 = load i32, i32* @EMAC_CTL, align 4
  %109 = call i32 @EMAC_READ_REG(%struct.emac_softc* %107, i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @EMAC_CTL_RST, align 4
  %111 = load i32, i32* @EMAC_CTL_TX_EN, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @EMAC_CTL_RX_EN, align 4
  %114 = or i32 %112, %113
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %119 = load i32, i32* @EMAC_CTL, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %30, %106, %87
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @EMAC_READ_REG(%struct.emac_softc*, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @EMAC_WRITE_REG(%struct.emac_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
