; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_pref_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_pref_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.al_udma_m2s_desc_pref_conf = type { i8*, i8*, i8*, i8*, i32, i8* }

@UDMA_M2S_RD_DESC_PREF_CFG_1_FIFO_DEPTH_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_1_FIFO_DEPTH_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_2_MAX_DESC_PER_PKT_MASK = common dso_local global i32 0, align 4
@SRR = common dso_local global i32 0, align 4
@STRICT = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_2_MAX_DESC_PER_PKT_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_BELOW_THR_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_BELOW_THR_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_m2s_pref_get(%struct.al_udma* %0, %struct.al_udma_m2s_desc_pref_conf* %1) #0 {
  %3 = alloca %struct.al_udma*, align 8
  %4 = alloca %struct.al_udma_m2s_desc_pref_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.al_udma* %0, %struct.al_udma** %3, align 8
  store %struct.al_udma_m2s_desc_pref_conf* %1, %struct.al_udma_m2s_desc_pref_conf** %4, align 8
  %6 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %7 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = call i32 @al_reg_read32(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_1_FIFO_DEPTH_MASK, align 4
  %15 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_1_FIFO_DEPTH_SHIFT, align 4
  %16 = call i8* @AL_REG_FIELD_GET(i32 %13, i32 %14, i32 %15)
  %17 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %4, align 8
  %18 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %20 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = call i32 @al_reg_read32(i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_2_MAX_DESC_PER_PKT_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* @SRR, align 4
  %32 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %4, align 8
  %33 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  br label %38

34:                                               ; preds = %2
  %35 = load i32, i32* @STRICT, align 4
  %36 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %4, align 8
  %37 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_2_MAX_DESC_PER_PKT_MASK, align 4
  %41 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_2_MAX_DESC_PER_PKT_SHIFT, align 4
  %42 = call i8* @AL_REG_FIELD_GET(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %4, align 8
  %44 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %46 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @al_reg_read32(i32* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_BELOW_THR_MASK, align 4
  %54 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_BELOW_THR_SHIFT, align 4
  %55 = call i8* @AL_REG_FIELD_GET(i32 %52, i32 %53, i32 %54)
  %56 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %4, align 8
  %57 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_MASK, align 4
  %60 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_SHIFT, align 4
  %61 = call i8* @AL_REG_FIELD_GET(i32 %58, i32 %59, i32 %60)
  %62 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %4, align 8
  %63 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_MASK, align 4
  %66 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_SHIFT, align 4
  %67 = call i8* @AL_REG_FIELD_GET(i32 %64, i32 %65, i32 %66)
  %68 = load %struct.al_udma_m2s_desc_pref_conf*, %struct.al_udma_m2s_desc_pref_conf** %4, align 8
  %69 = getelementptr inbounds %struct.al_udma_m2s_desc_pref_conf, %struct.al_udma_m2s_desc_pref_conf* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  ret i32 0
}

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i8* @AL_REG_FIELD_GET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
