; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_s2m_completion_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_s2m_completion_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.al_udma_s2m_completion_conf = type { i32, i64, i64, i64, i32, i32, i32, i32 }

@UDMA_S2M_COMP_CFG_1C_DESC_SIZE_MASK = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i64 0, align 8
@UDMA_S2M_COMP_CFG_1C_CNT_WORDS = common dso_local global i32 0, align 4
@UDMA_S2M_COMP_CFG_1C_Q_PROMOTION = common dso_local global i32 0, align 4
@UDMA_S2M_COMP_CFG_1C_FORCE_RR = common dso_local global i32 0, align 4
@UDMA_S2M_COMP_CFG_1C_Q_FREE_MIN_MASK = common dso_local global i32 0, align 4
@UDMA_S2M_COMP_CFG_1C_Q_FREE_MIN_SHIFT = common dso_local global i32 0, align 4
@UDMA_S2M_COMP_CFG_2C_COMP_FIFO_DEPTH_MASK = common dso_local global i32 0, align 4
@UDMA_S2M_COMP_CFG_2C_UNACK_FIFO_DEPTH_MASK = common dso_local global i32 0, align 4
@UDMA_S2M_COMP_CFG_2C_UNACK_FIFO_DEPTH_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_s2m_completion_set(%struct.al_udma* %0, %struct.al_udma_s2m_completion_conf* %1) #0 {
  %3 = alloca %struct.al_udma*, align 8
  %4 = alloca %struct.al_udma_s2m_completion_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.al_udma* %0, %struct.al_udma** %3, align 8
  store %struct.al_udma_s2m_completion_conf* %1, %struct.al_udma_s2m_completion_conf** %4, align 8
  %6 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %7 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = call i32 @al_reg_read32(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @UDMA_S2M_COMP_CFG_1C_DESC_SIZE_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.al_udma_s2m_completion_conf*, %struct.al_udma_s2m_completion_conf** %4, align 8
  %18 = getelementptr inbounds %struct.al_udma_s2m_completion_conf, %struct.al_udma_s2m_completion_conf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @UDMA_S2M_COMP_CFG_1C_DESC_SIZE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.al_udma_s2m_completion_conf*, %struct.al_udma_s2m_completion_conf** %4, align 8
  %25 = getelementptr inbounds %struct.al_udma_s2m_completion_conf, %struct.al_udma_s2m_completion_conf* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AL_TRUE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @UDMA_S2M_COMP_CFG_1C_CNT_WORDS, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %38

33:                                               ; preds = %2
  %34 = load i32, i32* @UDMA_S2M_COMP_CFG_1C_CNT_WORDS, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.al_udma_s2m_completion_conf*, %struct.al_udma_s2m_completion_conf** %4, align 8
  %40 = getelementptr inbounds %struct.al_udma_s2m_completion_conf, %struct.al_udma_s2m_completion_conf* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AL_TRUE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @UDMA_S2M_COMP_CFG_1C_Q_PROMOTION, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %53

48:                                               ; preds = %38
  %49 = load i32, i32* @UDMA_S2M_COMP_CFG_1C_Q_PROMOTION, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = load %struct.al_udma_s2m_completion_conf*, %struct.al_udma_s2m_completion_conf** %4, align 8
  %55 = getelementptr inbounds %struct.al_udma_s2m_completion_conf, %struct.al_udma_s2m_completion_conf* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AL_TRUE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @UDMA_S2M_COMP_CFG_1C_FORCE_RR, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %68

63:                                               ; preds = %53
  %64 = load i32, i32* @UDMA_S2M_COMP_CFG_1C_FORCE_RR, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, i32* @UDMA_S2M_COMP_CFG_1C_Q_FREE_MIN_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.al_udma_s2m_completion_conf*, %struct.al_udma_s2m_completion_conf** %4, align 8
  %74 = getelementptr inbounds %struct.al_udma_s2m_completion_conf, %struct.al_udma_s2m_completion_conf* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @UDMA_S2M_COMP_CFG_1C_Q_FREE_MIN_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* @UDMA_S2M_COMP_CFG_1C_Q_FREE_MIN_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %83 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @al_reg_write32(i32* %87, i32 %88)
  %90 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %91 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = call i32 @al_reg_read32(i32* %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* @UDMA_S2M_COMP_CFG_2C_COMP_FIFO_DEPTH_MASK, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load %struct.al_udma_s2m_completion_conf*, %struct.al_udma_s2m_completion_conf** %4, align 8
  %102 = getelementptr inbounds %struct.al_udma_s2m_completion_conf, %struct.al_udma_s2m_completion_conf* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @UDMA_S2M_COMP_CFG_2C_COMP_FIFO_DEPTH_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* @UDMA_S2M_COMP_CFG_2C_UNACK_FIFO_DEPTH_MASK, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %5, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load %struct.al_udma_s2m_completion_conf*, %struct.al_udma_s2m_completion_conf** %4, align 8
  %113 = getelementptr inbounds %struct.al_udma_s2m_completion_conf, %struct.al_udma_s2m_completion_conf* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @UDMA_S2M_COMP_CFG_2C_UNACK_FIFO_DEPTH_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = load i32, i32* @UDMA_S2M_COMP_CFG_2C_UNACK_FIFO_DEPTH_MASK, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %5, align 4
  %121 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %122 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @al_reg_write32(i32* %126, i32 %127)
  %129 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %130 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.al_udma_s2m_completion_conf*, %struct.al_udma_s2m_completion_conf** %4, align 8
  %136 = getelementptr inbounds %struct.al_udma_s2m_completion_conf, %struct.al_udma_s2m_completion_conf* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @al_reg_write32(i32* %134, i32 %137)
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
