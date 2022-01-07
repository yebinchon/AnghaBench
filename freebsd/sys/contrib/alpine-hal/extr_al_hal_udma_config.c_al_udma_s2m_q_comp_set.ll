; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_s2m_q_comp_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_s2m_q_comp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma_q = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.al_udma_s2m_q_comp_conf = type { i64, i64, i32, i32, i64, i64, i32 }

@AL_TRUE = common dso_local global i64 0, align 8
@UDMA_S2M_Q_COMP_CFG_EN_COMP_RING_UPDATE = common dso_local global i32 0, align 4
@UDMA_S2M_Q_COMP_CFG_DIS_COMP_COAL = common dso_local global i32 0, align 4
@UDMA_S2M_Q_PKT_CFG_HDR_SPLIT_SIZE_MASK = common dso_local global i32 0, align 4
@UDMA_S2M_Q_PKT_CFG_FORCE_HDR_SPLIT = common dso_local global i32 0, align 4
@UDMA_S2M_Q_PKT_CFG_EN_HDR_SPLIT = common dso_local global i32 0, align 4
@UDMA_S2M_QOS_CFG_Q_QOS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_s2m_q_comp_set(%struct.al_udma_q* %0, %struct.al_udma_s2m_q_comp_conf* %1) #0 {
  %3 = alloca %struct.al_udma_q*, align 8
  %4 = alloca %struct.al_udma_s2m_q_comp_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.al_udma_q* %0, %struct.al_udma_q** %3, align 8
  store %struct.al_udma_s2m_q_comp_conf* %1, %struct.al_udma_s2m_q_comp_conf** %4, align 8
  %6 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %7 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %11 = call i32 @al_reg_read32(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.al_udma_s2m_q_comp_conf*, %struct.al_udma_s2m_q_comp_conf** %4, align 8
  %13 = getelementptr inbounds %struct.al_udma_s2m_q_comp_conf, %struct.al_udma_s2m_q_comp_conf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AL_TRUE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @UDMA_S2M_Q_COMP_CFG_EN_COMP_RING_UPDATE, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @UDMA_S2M_Q_COMP_CFG_EN_COMP_RING_UPDATE, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %17
  %27 = load %struct.al_udma_s2m_q_comp_conf*, %struct.al_udma_s2m_q_comp_conf** %4, align 8
  %28 = getelementptr inbounds %struct.al_udma_s2m_q_comp_conf, %struct.al_udma_s2m_q_comp_conf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AL_TRUE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @UDMA_S2M_Q_COMP_CFG_DIS_COMP_COAL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %41

36:                                               ; preds = %26
  %37 = load i32, i32* @UDMA_S2M_Q_COMP_CFG_DIS_COMP_COAL, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %43 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @al_reg_write32(i32* %46, i32 %47)
  %49 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %50 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load %struct.al_udma_s2m_q_comp_conf*, %struct.al_udma_s2m_q_comp_conf** %4, align 8
  %55 = getelementptr inbounds %struct.al_udma_s2m_q_comp_conf, %struct.al_udma_s2m_q_comp_conf* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @al_reg_write32(i32* %53, i32 %56)
  %58 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %59 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = call i32 @al_reg_read32(i32* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @UDMA_S2M_Q_PKT_CFG_HDR_SPLIT_SIZE_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load %struct.al_udma_s2m_q_comp_conf*, %struct.al_udma_s2m_q_comp_conf** %4, align 8
  %69 = getelementptr inbounds %struct.al_udma_s2m_q_comp_conf, %struct.al_udma_s2m_q_comp_conf* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @UDMA_S2M_Q_PKT_CFG_HDR_SPLIT_SIZE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load %struct.al_udma_s2m_q_comp_conf*, %struct.al_udma_s2m_q_comp_conf** %4, align 8
  %76 = getelementptr inbounds %struct.al_udma_s2m_q_comp_conf, %struct.al_udma_s2m_q_comp_conf* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AL_TRUE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %41
  %81 = load i32, i32* @UDMA_S2M_Q_PKT_CFG_FORCE_HDR_SPLIT, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %89

84:                                               ; preds = %41
  %85 = load i32, i32* @UDMA_S2M_Q_PKT_CFG_FORCE_HDR_SPLIT, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %84, %80
  %90 = load %struct.al_udma_s2m_q_comp_conf*, %struct.al_udma_s2m_q_comp_conf** %4, align 8
  %91 = getelementptr inbounds %struct.al_udma_s2m_q_comp_conf, %struct.al_udma_s2m_q_comp_conf* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @AL_TRUE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i32, i32* @UDMA_S2M_Q_PKT_CFG_EN_HDR_SPLIT, align 4
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %5, align 4
  br label %104

99:                                               ; preds = %89
  %100 = load i32, i32* @UDMA_S2M_Q_PKT_CFG_EN_HDR_SPLIT, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %5, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %99, %95
  %105 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %106 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @al_reg_write32(i32* %109, i32 %110)
  %112 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %113 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = call i32 @al_reg_read32(i32* %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* @UDMA_S2M_QOS_CFG_Q_QOS_MASK, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %5, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %5, align 4
  %122 = load %struct.al_udma_s2m_q_comp_conf*, %struct.al_udma_s2m_q_comp_conf** %4, align 8
  %123 = getelementptr inbounds %struct.al_udma_s2m_q_comp_conf, %struct.al_udma_s2m_q_comp_conf* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @UDMA_S2M_QOS_CFG_Q_QOS_MASK, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* %5, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %5, align 4
  %129 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %130 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @al_reg_write32(i32* %133, i32 %134)
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
