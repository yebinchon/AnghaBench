; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_s2m_data_write_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_s2m_data_write_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.al_udma_s2m_data_write_conf = type { i32, i32, i32, i32, i32 }

@UDMA_S2M_WR_DATA_CFG_1_DATA_FIFO_DEPTH_MASK = common dso_local global i32 0, align 4
@UDMA_S2M_WR_DATA_CFG_1_MAX_PKT_LIMIT_MASK = common dso_local global i32 0, align 4
@UDMA_S2M_WR_DATA_CFG_1_MAX_PKT_LIMIT_SHIFT = common dso_local global i32 0, align 4
@UDMA_S2M_WR_DATA_CFG_1_FIFO_MARGIN_MASK = common dso_local global i32 0, align 4
@UDMA_S2M_WR_DATA_CFG_1_FIFO_MARGIN_SHIFT = common dso_local global i32 0, align 4
@UDMA_S2M_WR_DATA_CFG_2_DESC_WAIT_TIMER_MASK = common dso_local global i32 0, align 4
@UDMA_S2M_WR_DATA_CFG_2_DROP_IF_NO_DESC = common dso_local global i32 0, align 4
@UDMA_S2M_WR_DATA_CFG_2_HINT_IF_NO_DESC = common dso_local global i32 0, align 4
@UDMA_S2M_WR_DATA_CFG_2_WAIT_FOR_PREF = common dso_local global i32 0, align 4
@UDMA_S2M_WR_DATA_CFG_2_FULL_LINE_MODE = common dso_local global i32 0, align 4
@UDMA_S2M_WR_DATA_CFG_2_DIRECT_HDR_USE_BUF1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_s2m_data_write_set(%struct.al_udma* %0, %struct.al_udma_s2m_data_write_conf* %1) #0 {
  %3 = alloca %struct.al_udma*, align 8
  %4 = alloca %struct.al_udma_s2m_data_write_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.al_udma* %0, %struct.al_udma** %3, align 8
  store %struct.al_udma_s2m_data_write_conf* %1, %struct.al_udma_s2m_data_write_conf** %4, align 8
  %6 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %7 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = call i32 @al_reg_read32(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_1_DATA_FIFO_DEPTH_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.al_udma_s2m_data_write_conf*, %struct.al_udma_s2m_data_write_conf** %4, align 8
  %18 = getelementptr inbounds %struct.al_udma_s2m_data_write_conf, %struct.al_udma_s2m_data_write_conf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_1_DATA_FIFO_DEPTH_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_1_MAX_PKT_LIMIT_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.al_udma_s2m_data_write_conf*, %struct.al_udma_s2m_data_write_conf** %4, align 8
  %29 = getelementptr inbounds %struct.al_udma_s2m_data_write_conf, %struct.al_udma_s2m_data_write_conf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_1_MAX_PKT_LIMIT_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_1_MAX_PKT_LIMIT_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_1_FIFO_MARGIN_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.al_udma_s2m_data_write_conf*, %struct.al_udma_s2m_data_write_conf** %4, align 8
  %42 = getelementptr inbounds %struct.al_udma_s2m_data_write_conf, %struct.al_udma_s2m_data_write_conf* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_1_FIFO_MARGIN_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_1_FIFO_MARGIN_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %51 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @al_reg_write32(i32* %55, i32 %56)
  %58 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %59 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @al_reg_read32(i32* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_2_DESC_WAIT_TIMER_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load %struct.al_udma_s2m_data_write_conf*, %struct.al_udma_s2m_data_write_conf** %4, align 8
  %70 = getelementptr inbounds %struct.al_udma_s2m_data_write_conf, %struct.al_udma_s2m_data_write_conf* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_2_DESC_WAIT_TIMER_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_2_DROP_IF_NO_DESC, align 4
  %77 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_2_HINT_IF_NO_DESC, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_2_WAIT_FOR_PREF, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_2_FULL_LINE_MODE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_2_DIRECT_HDR_USE_BUF1, align 4
  %84 = or i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %5, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load %struct.al_udma_s2m_data_write_conf*, %struct.al_udma_s2m_data_write_conf** %4, align 8
  %89 = getelementptr inbounds %struct.al_udma_s2m_data_write_conf, %struct.al_udma_s2m_data_write_conf* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_2_DROP_IF_NO_DESC, align 4
  %92 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_2_HINT_IF_NO_DESC, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_2_WAIT_FOR_PREF, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_2_FULL_LINE_MODE, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_2_DIRECT_HDR_USE_BUF1, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %90, %99
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %104 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @al_reg_write32(i32* %108, i32 %109)
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
