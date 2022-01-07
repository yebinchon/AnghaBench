; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_pref_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_pref_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.al_udma_m2s_desc_pref_conf = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@UDMA_M2S_RD_DESC_PREF_CFG_1_FIFO_DEPTH_MASK = common dso_local global i32 0, align 4
@SRR = common dso_local global i64 0, align 8
@UDMA_M2S_RD_DESC_PREF_CFG_2_PREF_FORCE_RR = common dso_local global i32 0, align 4
@STRICT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"udma [%s]: requested descriptor preferch arbiter mode (%d) is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_2_MAX_DESC_PER_PKT_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_BELOW_THR_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DATA_CFG_DATA_FIFO_DEPTH_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DATA_CFG_MAX_PKT_LIMIT_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DATA_CFG_MAX_PKT_LIMIT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_m2s_pref_set(%struct.al_udma* %0, %struct.al_udma_m2s_desc_pref_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_udma*, align 8
  %5 = alloca %struct.al_udma_m2s_desc_pref_conf*, align 8
  %6 = alloca i32, align 4
  store %struct.al_udma* %0, %struct.al_udma** %4, align 8
  store %struct.al_udma_m2s_desc_pref_conf* %1, %struct.al_udma_m2s_desc_pref_conf** %5, align 8
  %7 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %8 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = call i32 @al_reg_read32(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_1_FIFO_DEPTH_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %5, align 8
  %19 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %24 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @al_reg_write32(i32* %28, i32 %29)
  %31 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %32 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = call i32 @al_reg_read32(i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %5, align 8
  %39 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SRR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_2_PREF_FORCE_RR, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %69

47:                                               ; preds = %2
  %48 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %5, align 8
  %49 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @STRICT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_2_PREF_FORCE_RR, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %68

58:                                               ; preds = %47
  %59 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %60 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %5, align 8
  %63 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @al_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %180

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %43
  %70 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_2_MAX_DESC_PER_PKT_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %5, align 8
  %75 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_2_MAX_DESC_PER_PKT_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %82 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @al_reg_write32(i32* %86, i32 %87)
  %89 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %90 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = call i32 @al_reg_read32(i32* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_BELOW_THR_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %5, align 8
  %101 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_BELOW_THR_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_MASK, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %6, align 4
  %111 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %5, align 8
  %112 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_MASK, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %6, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %6, align 4
  %124 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %5, align 8
  %125 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_SHIFT, align 4
  %128 = shl i32 %126, %127
  %129 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* %6, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %6, align 4
  %133 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %134 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @al_reg_write32(i32* %138, i32 %139)
  %141 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %142 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = call i32 @al_reg_read32(i32* %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* @UDMA_M2S_RD_DATA_CFG_DATA_FIFO_DEPTH_MASK, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %6, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %6, align 4
  %152 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %5, align 8
  %153 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @UDMA_M2S_RD_DATA_CFG_DATA_FIFO_DEPTH_MASK, align 4
  %156 = and i32 %154, %155
  %157 = load i32, i32* %6, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* @UDMA_M2S_RD_DATA_CFG_MAX_PKT_LIMIT_MASK, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %6, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %6, align 4
  %163 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %5, align 8
  %164 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @UDMA_M2S_RD_DATA_CFG_MAX_PKT_LIMIT_SHIFT, align 4
  %167 = shl i32 %165, %166
  %168 = load i32, i32* @UDMA_M2S_RD_DATA_CFG_MAX_PKT_LIMIT_MASK, align 4
  %169 = and i32 %167, %168
  %170 = load i32, i32* %6, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %6, align 4
  %172 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %173 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %172, i32 0, i32 0
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @al_reg_write32(i32* %177, i32 %178)
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %69, %58
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @al_err(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
