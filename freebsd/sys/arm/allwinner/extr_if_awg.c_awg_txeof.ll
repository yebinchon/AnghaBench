; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, %struct.emac_desc*, i32, i32 }
%struct.emac_desc = type { i32, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@TX_DESC_CTL = common dso_local global i32 0, align 4
@TX_LAST_DESC = common dso_local global i32 0, align 4
@TX_HEADER_ERR = common dso_local global i32 0, align 4
@TX_PAYLOAD_ERR = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.awg_softc*)* @awg_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @awg_txeof(%struct.awg_softc* %0) #0 {
  %2 = alloca %struct.awg_softc*, align 8
  %3 = alloca %struct.emac_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.awg_softc* %0, %struct.awg_softc** %2, align 8
  %9 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %10 = call i32 @AWG_ASSERT_LOCKED(%struct.awg_softc* %9)
  %11 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %12 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %16 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %20 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @bus_dmamap_sync(i32 %14, i32 %18, i32 %21)
  %23 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %24 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %26 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %27 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %84, %1
  %31 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %32 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %30
  %37 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %38 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load %struct.emac_desc*, %struct.emac_desc** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.emac_desc, %struct.emac_desc* %40, i64 %42
  store %struct.emac_desc* %43, %struct.emac_desc** %3, align 8
  %44 = load %struct.emac_desc*, %struct.emac_desc** %3, align 8
  %45 = getelementptr inbounds %struct.emac_desc, %struct.emac_desc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32toh(i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @TX_DESC_CTL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  br label %87

53:                                               ; preds = %36
  %54 = load %struct.emac_desc*, %struct.emac_desc** %3, align 8
  %55 = getelementptr inbounds %struct.emac_desc, %struct.emac_desc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32toh(i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @TX_LAST_DESC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %53
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @TX_HEADER_ERR, align 4
  %65 = load i32, i32* @TX_PAYLOAD_ERR, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %72 = call i32 @if_inc_counter(i32 %70, i32 %71, i32 1)
  br label %77

73:                                               ; preds = %62
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %76 = call i32 @if_inc_counter(i32 %74, i32 %75, i32 1)
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %53
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  %81 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @awg_clean_txbuf(%struct.awg_softc* %81, i32 %82)
  br label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @TX_NEXT(i32 %85)
  store i32 %86, i32* %7, align 4
  br label %30

87:                                               ; preds = %52, %30
  %88 = load i32, i32* %8, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %93 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %97 = call i32 @if_setdrvflagbits(i32 %95, i32 0, i32 %96)
  br label %98

98:                                               ; preds = %90, %87
  ret void
}

declare dso_local i32 @AWG_ASSERT_LOCKED(%struct.awg_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @awg_clean_txbuf(%struct.awg_softc*, i32) #1

declare dso_local i32 @TX_NEXT(i32) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
