; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_comp_timeouts_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_comp_timeouts_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.al_udma_m2s_comp_timeouts = type { i64, i64, i32, i32, i32, i32 }

@SRR = common dso_local global i64 0, align 8
@UDMA_M2S_COMP_CFG_1C_FORCE_RR = common dso_local global i32 0, align 4
@STRICT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [82 x i8] c"udma [%s]: requested completion descriptor preferch arbiter mode (%d) is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i64 0, align 8
@UDMA_M2S_COMP_CFG_1C_Q_PROMOTION = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_APPLICATION_ACK_TOUT_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_APPLICATION_ACK_TOUT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_m2s_comp_timeouts_set(%struct.al_udma* %0, %struct.al_udma_m2s_comp_timeouts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_udma*, align 8
  %5 = alloca %struct.al_udma_m2s_comp_timeouts*, align 8
  %6 = alloca i32, align 4
  store %struct.al_udma* %0, %struct.al_udma** %4, align 8
  store %struct.al_udma_m2s_comp_timeouts* %1, %struct.al_udma_m2s_comp_timeouts** %5, align 8
  %7 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %8 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = call i32 @al_reg_read32(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.al_udma_m2s_comp_timeouts*, %struct.al_udma_m2s_comp_timeouts** %5, align 8
  %15 = getelementptr inbounds %struct.al_udma_m2s_comp_timeouts, %struct.al_udma_m2s_comp_timeouts* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SRR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_FORCE_RR, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %45

23:                                               ; preds = %2
  %24 = load %struct.al_udma_m2s_comp_timeouts*, %struct.al_udma_m2s_comp_timeouts** %5, align 8
  %25 = getelementptr inbounds %struct.al_udma_m2s_comp_timeouts, %struct.al_udma_m2s_comp_timeouts* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @STRICT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_FORCE_RR, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %44

34:                                               ; preds = %23
  %35 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %36 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.al_udma_m2s_comp_timeouts*, %struct.al_udma_m2s_comp_timeouts** %5, align 8
  %39 = getelementptr inbounds %struct.al_udma_m2s_comp_timeouts, %struct.al_udma_m2s_comp_timeouts* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @al_err(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %127

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %19
  %46 = load %struct.al_udma_m2s_comp_timeouts*, %struct.al_udma_m2s_comp_timeouts** %5, align 8
  %47 = getelementptr inbounds %struct.al_udma_m2s_comp_timeouts, %struct.al_udma_m2s_comp_timeouts* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AL_TRUE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_Q_PROMOTION, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %60

55:                                               ; preds = %45
  %56 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_Q_PROMOTION, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load %struct.al_udma_m2s_comp_timeouts*, %struct.al_udma_m2s_comp_timeouts** %5, align 8
  %66 = getelementptr inbounds %struct.al_udma_m2s_comp_timeouts, %struct.al_udma_m2s_comp_timeouts* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load %struct.al_udma_m2s_comp_timeouts*, %struct.al_udma_m2s_comp_timeouts** %5, align 8
  %77 = getelementptr inbounds %struct.al_udma_m2s_comp_timeouts, %struct.al_udma_m2s_comp_timeouts* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %84 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @al_reg_write32(i32* %88, i32 %89)
  %91 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %92 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load %struct.al_udma_m2s_comp_timeouts*, %struct.al_udma_m2s_comp_timeouts** %5, align 8
  %98 = getelementptr inbounds %struct.al_udma_m2s_comp_timeouts, %struct.al_udma_m2s_comp_timeouts* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @al_reg_write32(i32* %96, i32 %99)
  %101 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %102 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = call i32 @al_reg_read32(i32* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* @UDMA_M2S_COMP_CFG_APPLICATION_ACK_TOUT_MASK, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %6, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load %struct.al_udma_m2s_comp_timeouts*, %struct.al_udma_m2s_comp_timeouts** %5, align 8
  %113 = getelementptr inbounds %struct.al_udma_m2s_comp_timeouts, %struct.al_udma_m2s_comp_timeouts* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @UDMA_M2S_COMP_CFG_APPLICATION_ACK_TOUT_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %120 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @al_reg_write32(i32* %124, i32 %125)
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %60, %34
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @al_err(i8*, i32, i64) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
