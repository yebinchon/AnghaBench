; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_newbuf_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_newbuf_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.mbuf*, i32 }
%struct.mbuf = type { %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.awg_softc*, i32)* @awg_newbuf_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awg_newbuf_rx(%struct.awg_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.awg_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.awg_softc* %0, %struct.awg_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @M_NOWAIT, align 4
  %11 = load i32, i32* @MT_DATA, align 4
  %12 = load i32, i32* @M_PKTHDR, align 4
  %13 = call %struct.mbuf* @m_getcl(i32 %10, i32 %11, i32 %12)
  store %struct.mbuf* %13, %struct.mbuf** %6, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %15 = icmp eq %struct.mbuf* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOBUFS, align 4
  store i32 %17, i32* %3, align 4
  br label %143

18:                                               ; preds = %2
  %19 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %22, i32* %27, align 4
  %28 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %29 = load i32, i32* @ETHER_ALIGN, align 4
  %30 = call i32 @m_adj(%struct.mbuf* %28, i32 %29)
  %31 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %32 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %36 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %40 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %41 = call i64 @bus_dmamap_load_mbuf_sg(i32 %34, i32 %38, %struct.mbuf* %39, %struct.TYPE_11__* %7, i32* %9, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %18
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %45 = call i32 @m_freem(%struct.mbuf* %44)
  %46 = load i32, i32* @ENOBUFS, align 4
  store i32 %46, i32* %3, align 4
  br label %143

47:                                               ; preds = %18
  %48 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %49 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.mbuf*, %struct.mbuf** %55, align 8
  %57 = icmp ne %struct.mbuf* %56, null
  br i1 %57, label %58, label %88

58:                                               ; preds = %47
  %59 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %60 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %64 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %73 = call i32 @bus_dmamap_sync(i32 %62, i32 %71, i32 %72)
  %74 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %75 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %79 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @bus_dmamap_unload(i32 %77, i32 %86)
  br label %88

88:                                               ; preds = %58, %47
  %89 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %90 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %8, align 4
  %98 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %99 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %103 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  store i32 %101, i32* %109, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %112 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  store i32 %110, i32* %113, align 4
  %114 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %115 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %119 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %128 = call i32 @bus_dmamap_sync(i32 %117, i32 %126, i32 %127)
  %129 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %130 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %131 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  store %struct.mbuf* %129, %struct.mbuf** %137, align 8
  %138 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %139 = load i32, i32* %5, align 4
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @awg_setup_rxdesc(%struct.awg_softc* %138, i32 %139, i32 %141)
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %88, %43, %16
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i64 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @awg_setup_rxdesc(%struct.awg_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
