; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_rx_ring_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_rx_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fv_softc = type { %struct.TYPE_3__, %struct.fv_ring_data }
%struct.TYPE_3__ = type { i32, i32, %struct.fv_rxdesc*, i64 }
%struct.fv_rxdesc = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.fv_ring_data = type { %struct.TYPE_4__* }

@FV_RX_RING_SIZE = common dso_local global i32 0, align 4
@FV_RX_RING_CNT = common dso_local global i32 0, align 4
@ADSTAT_OWN = common dso_local global i32 0, align 4
@ADCTL_ER = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fv_softc*)* @fv_rx_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fv_rx_ring_init(%struct.fv_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fv_softc*, align 8
  %4 = alloca %struct.fv_ring_data*, align 8
  %5 = alloca %struct.fv_rxdesc*, align 8
  %6 = alloca i32, align 4
  store %struct.fv_softc* %0, %struct.fv_softc** %3, align 8
  %7 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %8 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %11 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %10, i32 0, i32 1
  store %struct.fv_ring_data* %11, %struct.fv_ring_data** %4, align 8
  %12 = load %struct.fv_ring_data*, %struct.fv_ring_data** %4, align 8
  %13 = getelementptr inbounds %struct.fv_ring_data, %struct.fv_ring_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* @FV_RX_RING_SIZE, align 4
  %16 = call i32 @bzero(%struct.TYPE_4__* %14, i32 %15)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %84, %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @FV_RX_RING_CNT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %87

21:                                               ; preds = %17
  %22 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %23 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load %struct.fv_rxdesc*, %struct.fv_rxdesc** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.fv_rxdesc, %struct.fv_rxdesc* %25, i64 %27
  store %struct.fv_rxdesc* %28, %struct.fv_rxdesc** %5, align 8
  %29 = load %struct.fv_rxdesc*, %struct.fv_rxdesc** %5, align 8
  %30 = getelementptr inbounds %struct.fv_rxdesc, %struct.fv_rxdesc* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.fv_ring_data*, %struct.fv_ring_data** %4, align 8
  %32 = getelementptr inbounds %struct.fv_ring_data, %struct.fv_ring_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = load %struct.fv_rxdesc*, %struct.fv_rxdesc** %5, align 8
  %38 = getelementptr inbounds %struct.fv_rxdesc, %struct.fv_rxdesc* %37, i32 0, i32 0
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %38, align 8
  %39 = load i32, i32* @ADSTAT_OWN, align 4
  %40 = load %struct.fv_ring_data*, %struct.fv_ring_data** %4, align 8
  %41 = getelementptr inbounds %struct.fv_ring_data, %struct.fv_ring_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %39, i32* %46, align 4
  %47 = load %struct.fv_ring_data*, %struct.fv_ring_data** %4, align 8
  %48 = getelementptr inbounds %struct.fv_ring_data, %struct.fv_ring_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @FV_RX_RING_CNT, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %21
  %59 = load i32, i32* @ADCTL_ER, align 4
  %60 = load %struct.fv_ring_data*, %struct.fv_ring_data** %4, align 8
  %61 = getelementptr inbounds %struct.fv_ring_data, %struct.fv_ring_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %59
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %58, %21
  %70 = load %struct.fv_ring_data*, %struct.fv_ring_data** %4, align 8
  %71 = getelementptr inbounds %struct.fv_ring_data, %struct.fv_ring_data* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @fv_newbuf(%struct.fv_softc* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* @ENOBUFS, align 4
  store i32 %82, i32* %2, align 4
  br label %100

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %17

87:                                               ; preds = %17
  %88 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %89 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %93 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %97 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @bus_dmamap_sync(i32 %91, i32 %95, i32 %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %87, %81
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @fv_newbuf(%struct.fv_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
