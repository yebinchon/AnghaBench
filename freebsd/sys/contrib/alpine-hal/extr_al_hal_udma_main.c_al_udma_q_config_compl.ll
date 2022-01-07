; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_main.c_al_udma_q_config_compl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_main.c_al_udma_q_config_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma_q = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@UDMA_TX = common dso_local global i64 0, align 8
@AL_UDMA_Q_FLAGS_NO_COMP_UPDATE = common dso_local global i32 0, align 4
@UDMA_M2S_Q_COMP_CFG_EN_COMP_RING_UPDATE = common dso_local global i32 0, align 4
@AL_UDMA_Q_FLAGS_EN_COMP_COAL = common dso_local global i32 0, align 4
@UDMA_M2S_Q_COMP_CFG_DIS_COMP_COAL = common dso_local global i32 0, align 4
@UDMA_RX = common dso_local global i64 0, align 8
@UDMA_S2M_COMP_CFG_1C_DESC_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_udma_q*)* @al_udma_q_config_compl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_udma_q_config_compl(%struct.al_udma_q* %0) #0 {
  %2 = alloca %struct.al_udma_q*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.al_udma_q* %0, %struct.al_udma_q** %2, align 8
  %5 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %6 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %5, i32 0, i32 2
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @UDMA_TX, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %14 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %13, i32 0, i32 3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32* %17, i32** %3, align 8
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %20 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %19, i32 0, i32 3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32* %23, i32** %3, align 8
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @al_reg_read32(i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %28 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AL_UDMA_Q_FLAGS_NO_COMP_UPDATE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i32, i32* @UDMA_M2S_Q_COMP_CFG_EN_COMP_RING_UPDATE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %42

38:                                               ; preds = %24
  %39 = load i32, i32* @UDMA_M2S_Q_COMP_CFG_EN_COMP_RING_UPDATE, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %44 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AL_UDMA_Q_FLAGS_EN_COMP_COAL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i32, i32* @UDMA_M2S_Q_COMP_CFG_DIS_COMP_COAL, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %58

54:                                               ; preds = %42
  %55 = load i32, i32* @UDMA_M2S_Q_COMP_CFG_DIS_COMP_COAL, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @al_reg_write32(i32* %59, i32 %60)
  %62 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %63 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %62, i32 0, i32 2
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @UDMA_RX, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %101

69:                                               ; preds = %58
  %70 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %71 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %70, i32 0, i32 2
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = call i32 @al_reg_read32(i32* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* @UDMA_S2M_COMP_CFG_1C_DESC_SIZE_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %4, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %84 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 2
  %87 = load i32, i32* @UDMA_S2M_COMP_CFG_1C_DESC_SIZE_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %92 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %91, i32 0, i32 2
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @al_reg_write32(i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %69, %58
  ret i32 0
}

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
