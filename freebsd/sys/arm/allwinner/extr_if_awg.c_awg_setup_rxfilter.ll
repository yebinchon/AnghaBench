; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_setup_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_setup_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@DIS_ADDR_FILTER = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@RX_ALL_MULTICAST = common dso_local global i32 0, align 4
@awg_hash_maddr = common dso_local global i32 0, align 4
@HASH_MULTICAST = common dso_local global i32 0, align 4
@EMAC_RX_HASH_0 = common dso_local global i32 0, align 4
@EMAC_RX_HASH_1 = common dso_local global i32 0, align 4
@EMAC_RX_FRM_FLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.awg_softc*)* @awg_setup_rxfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @awg_setup_rxfilter(%struct.awg_softc* %0) #0 {
  %2 = alloca %struct.awg_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.awg_softc* %0, %struct.awg_softc** %2, align 8
  %9 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %10 = call i32 @AWG_ASSERT_LOCKED(%struct.awg_softc* %9)
  %11 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %12 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %3, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @if_getflags(i32 %16)
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @DIS_ADDR_FILTER, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %1
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @if_getflags(i32 %26)
  %28 = load i32, i32* @IFF_ALLMULTI, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* @RX_ALL_MULTICAST, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 -1, i32* %35, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 -1, i32* %36, align 4
  br label %48

37:                                               ; preds = %25
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @awg_hash_maddr, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %41 = call i64 @if_foreach_llmaddr(i32 %38, i32 %39, i32* %40)
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @HASH_MULTICAST, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %37
  br label %48

48:                                               ; preds = %47, %31
  br label %49

49:                                               ; preds = %48, %21
  %50 = load i32, i32* %8, align 4
  %51 = call i32* @IF_LLADDR(i32 %50)
  store i32* %51, i32** %7, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %55, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 24
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 16
  %68 = or i32 %63, %67
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = or i32 %68, %72
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 0
  %78 = or i32 %73, %77
  store i32 %78, i32* %6, align 4
  %79 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %80 = call i32 @EMAC_ADDR_HIGH(i32 0)
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @WR4(%struct.awg_softc* %79, i32 %80, i32 %81)
  %83 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %84 = call i32 @EMAC_ADDR_LOW(i32 0)
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @WR4(%struct.awg_softc* %83, i32 %84, i32 %85)
  %87 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %88 = load i32, i32* @EMAC_RX_HASH_0, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @WR4(%struct.awg_softc* %87, i32 %88, i32 %90)
  %92 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %93 = load i32, i32* @EMAC_RX_HASH_1, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @WR4(%struct.awg_softc* %92, i32 %93, i32 %95)
  %97 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %98 = load i32, i32* @EMAC_RX_FRM_FLT, align 4
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @WR4(%struct.awg_softc* %97, i32 %98, i32 %99)
  ret void
}

declare dso_local i32 @AWG_ASSERT_LOCKED(%struct.awg_softc*) #1

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i64 @if_foreach_llmaddr(i32, i32, i32*) #1

declare dso_local i32* @IF_LLADDR(i32) #1

declare dso_local i32 @WR4(%struct.awg_softc*, i32, i32) #1

declare dso_local i32 @EMAC_ADDR_HIGH(i32) #1

declare dso_local i32 @EMAC_ADDR_LOW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
