; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_axi_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_axi_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.al_udma_m2s_axi_conf = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@AL_TRUE = common dso_local global i64 0, align 8
@UDMA_AXI_M2S_DATA_RD_CFG_ALWAYS_BREAK_ON_MAX_BOUDRY = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_DESC_WR_CFG_1_MIN_AXI_BEATS_MASK = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_DESC_WR_CFG_1_MIN_AXI_BEATS_SHIFT = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_OSTAND_CFG_MAX_DATA_RD_MASK = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_OSTAND_CFG_MAX_DESC_RD_MASK = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_OSTAND_CFG_MAX_DESC_RD_SHIFT = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_REQ_MASK = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_REQ_SHIFT = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_DATA_WR_MASK = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_DATA_WR_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_m2s_axi_set(%struct.al_udma* %0, %struct.al_udma_m2s_axi_conf* %1) #0 {
  %3 = alloca %struct.al_udma*, align 8
  %4 = alloca %struct.al_udma_m2s_axi_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.al_udma* %0, %struct.al_udma** %3, align 8
  store %struct.al_udma_m2s_axi_conf* %1, %struct.al_udma_m2s_axi_conf** %4, align 8
  %6 = load %struct.al_udma_m2s_axi_conf*, %struct.al_udma_m2s_axi_conf** %4, align 8
  %7 = getelementptr inbounds %struct.al_udma_m2s_axi_conf, %struct.al_udma_m2s_axi_conf* %6, i32 0, i32 8
  %8 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %9 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 9
  %14 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %15 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 8
  %20 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %21 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = call i32 @al_udma_m2s_axi_sm_set(i32* %7, i32* %13, i32* %19, i32* %25)
  %27 = load %struct.al_udma_m2s_axi_conf*, %struct.al_udma_m2s_axi_conf** %4, align 8
  %28 = getelementptr inbounds %struct.al_udma_m2s_axi_conf, %struct.al_udma_m2s_axi_conf* %27, i32 0, i32 7
  %29 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %30 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 7
  %35 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %36 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  %41 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %42 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = call i32 @al_udma_m2s_axi_sm_set(i32* %28, i32* %34, i32* %40, i32* %46)
  %48 = load %struct.al_udma_m2s_axi_conf*, %struct.al_udma_m2s_axi_conf** %4, align 8
  %49 = getelementptr inbounds %struct.al_udma_m2s_axi_conf, %struct.al_udma_m2s_axi_conf* %48, i32 0, i32 6
  %50 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %51 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  %56 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %57 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %63 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = call i32 @al_udma_m2s_axi_sm_set(i32* %49, i32* %55, i32* %61, i32* %67)
  %69 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %70 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = call i32 @al_reg_read32(i32* %74)
  store i32 %75, i32* %5, align 4
  %76 = load %struct.al_udma_m2s_axi_conf*, %struct.al_udma_m2s_axi_conf** %4, align 8
  %77 = getelementptr inbounds %struct.al_udma_m2s_axi_conf, %struct.al_udma_m2s_axi_conf* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AL_TRUE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %2
  %82 = load i32, i32* @UDMA_AXI_M2S_DATA_RD_CFG_ALWAYS_BREAK_ON_MAX_BOUDRY, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %90

85:                                               ; preds = %2
  %86 = load i32, i32* @UDMA_AXI_M2S_DATA_RD_CFG_ALWAYS_BREAK_ON_MAX_BOUDRY, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %85, %81
  %91 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %92 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @al_reg_write32(i32* %96, i32 %97)
  %99 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %100 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = call i32 @al_reg_read32(i32* %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* @UDMA_AXI_M2S_DESC_WR_CFG_1_MIN_AXI_BEATS_MASK, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %5, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %5, align 4
  %110 = load %struct.al_udma_m2s_axi_conf*, %struct.al_udma_m2s_axi_conf** %4, align 8
  %111 = getelementptr inbounds %struct.al_udma_m2s_axi_conf, %struct.al_udma_m2s_axi_conf* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @UDMA_AXI_M2S_DESC_WR_CFG_1_MIN_AXI_BEATS_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = load i32, i32* @UDMA_AXI_M2S_DESC_WR_CFG_1_MIN_AXI_BEATS_MASK, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  %119 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %120 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @al_reg_write32(i32* %124, i32 %125)
  %127 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %128 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = call i32 @al_reg_read32(i32* %132)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* @UDMA_AXI_M2S_OSTAND_CFG_MAX_DATA_RD_MASK, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %5, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %5, align 4
  %138 = load %struct.al_udma_m2s_axi_conf*, %struct.al_udma_m2s_axi_conf** %4, align 8
  %139 = getelementptr inbounds %struct.al_udma_m2s_axi_conf, %struct.al_udma_m2s_axi_conf* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @UDMA_AXI_M2S_OSTAND_CFG_MAX_DATA_RD_MASK, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* %5, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* @UDMA_AXI_M2S_OSTAND_CFG_MAX_DESC_RD_MASK, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %5, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %5, align 4
  %149 = load %struct.al_udma_m2s_axi_conf*, %struct.al_udma_m2s_axi_conf** %4, align 8
  %150 = getelementptr inbounds %struct.al_udma_m2s_axi_conf, %struct.al_udma_m2s_axi_conf* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @UDMA_AXI_M2S_OSTAND_CFG_MAX_DESC_RD_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = load i32, i32* @UDMA_AXI_M2S_OSTAND_CFG_MAX_DESC_RD_MASK, align 4
  %155 = and i32 %153, %154
  %156 = load i32, i32* %5, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* @UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_REQ_MASK, align 4
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %5, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %5, align 4
  %162 = load %struct.al_udma_m2s_axi_conf*, %struct.al_udma_m2s_axi_conf** %4, align 8
  %163 = getelementptr inbounds %struct.al_udma_m2s_axi_conf, %struct.al_udma_m2s_axi_conf* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_REQ_SHIFT, align 4
  %166 = shl i32 %164, %165
  %167 = load i32, i32* @UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_REQ_MASK, align 4
  %168 = and i32 %166, %167
  %169 = load i32, i32* %5, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* @UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_DATA_WR_MASK, align 4
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %5, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %5, align 4
  %175 = load %struct.al_udma_m2s_axi_conf*, %struct.al_udma_m2s_axi_conf** %4, align 8
  %176 = getelementptr inbounds %struct.al_udma_m2s_axi_conf, %struct.al_udma_m2s_axi_conf* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_DATA_WR_SHIFT, align 4
  %179 = shl i32 %177, %178
  %180 = load i32, i32* @UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_DATA_WR_MASK, align 4
  %181 = and i32 %179, %180
  %182 = load i32, i32* %5, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %5, align 4
  %184 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %185 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %184, i32 0, i32 0
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @al_reg_write32(i32* %189, i32 %190)
  ret i32 0
}

declare dso_local i32 @al_udma_m2s_axi_sm_set(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
