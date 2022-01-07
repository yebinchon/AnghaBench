; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fv_softc = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.ifnet* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.fv_txdesc*, i32 }
%struct.fv_txdesc = type { i32*, i32 }
%struct.TYPE_3__ = type { %struct.fv_desc* }
%struct.fv_desc = type { i32, i32, i64 }
%struct.ifnet = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@ADSTAT_Tx_ES = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@ADSTAT_Tx_UF = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@FV_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fv_softc*)* @fv_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fv_tx(%struct.fv_softc* %0) #0 {
  %2 = alloca %struct.fv_softc*, align 8
  %3 = alloca %struct.fv_txdesc*, align 8
  %4 = alloca %struct.fv_desc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fv_softc* %0, %struct.fv_softc** %2, align 8
  %11 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %12 = call i32 @FV_LOCK_ASSERT(%struct.fv_softc* %11)
  %13 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %14 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %18 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %156

25:                                               ; preds = %1
  %26 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %27 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %31 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %35 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @bus_dmamap_sync(i32 %29, i32 %33, i32 %36)
  %38 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %39 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %38, i32 0, i32 2
  %40 = load %struct.ifnet*, %struct.ifnet** %39, align 8
  store %struct.ifnet* %40, %struct.ifnet** %5, align 8
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %137, %25
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %141

46:                                               ; preds = %42
  %47 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %48 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.fv_desc*, %struct.fv_desc** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %50, i64 %52
  store %struct.fv_desc* %53, %struct.fv_desc** %4, align 8
  %54 = load %struct.fv_desc*, %struct.fv_desc** %4, align 8
  %55 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %6, align 4
  %57 = load %struct.fv_desc*, %struct.fv_desc** %4, align 8
  %58 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @FV_DMASIZE(i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  br label %141

64:                                               ; preds = %46
  %65 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %66 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %73 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %77 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  %79 = load %struct.fv_txdesc*, %struct.fv_txdesc** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.fv_txdesc, %struct.fv_txdesc* %79, i64 %81
  store %struct.fv_txdesc* %82, %struct.fv_txdesc** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @ADSTAT_Tx_ES, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %64
  %88 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %89 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %90 = call i32 @if_inc_counter(%struct.ifnet* %88, i32 %89, i32 1)
  br label %101

91:                                               ; preds = %64
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @ADSTAT_Tx_UF, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %98 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %99 = call i32 @if_inc_counter(%struct.ifnet* %97, i32 %98, i32 1)
  br label %100

100:                                              ; preds = %96, %91
  br label %101

101:                                              ; preds = %100, %87
  %102 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %103 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.fv_txdesc*, %struct.fv_txdesc** %3, align 8
  %107 = getelementptr inbounds %struct.fv_txdesc, %struct.fv_txdesc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %110 = call i32 @bus_dmamap_sync(i32 %105, i32 %108, i32 %109)
  %111 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %112 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.fv_txdesc*, %struct.fv_txdesc** %3, align 8
  %116 = getelementptr inbounds %struct.fv_txdesc, %struct.fv_txdesc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @bus_dmamap_unload(i32 %114, i32 %117)
  %119 = load %struct.fv_txdesc*, %struct.fv_txdesc** %3, align 8
  %120 = getelementptr inbounds %struct.fv_txdesc, %struct.fv_txdesc* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %101
  %124 = load %struct.fv_txdesc*, %struct.fv_txdesc** %3, align 8
  %125 = getelementptr inbounds %struct.fv_txdesc, %struct.fv_txdesc* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @m_freem(i32* %126)
  br label %128

128:                                              ; preds = %123, %101
  %129 = load %struct.fv_txdesc*, %struct.fv_txdesc** %3, align 8
  %130 = getelementptr inbounds %struct.fv_txdesc, %struct.fv_txdesc* %129, i32 0, i32 0
  store i32* null, i32** %130, align 8
  %131 = load %struct.fv_desc*, %struct.fv_desc** %4, align 8
  %132 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = load %struct.fv_desc*, %struct.fv_desc** %4, align 8
  %134 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  %135 = load %struct.fv_desc*, %struct.fv_desc** %4, align 8
  %136 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %135, i32 0, i32 2
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %128
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @FV_TX_RING_CNT, align 4
  %140 = call i32 @FV_INC(i32 %138, i32 %139)
  br label %42

141:                                              ; preds = %63, %42
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %144 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %147 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %151 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %155 = call i32 @bus_dmamap_sync(i32 %149, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %141, %24
  ret void
}

declare dso_local i32 @FV_LOCK_ASSERT(%struct.fv_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @FV_DMASIZE(i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @FV_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
