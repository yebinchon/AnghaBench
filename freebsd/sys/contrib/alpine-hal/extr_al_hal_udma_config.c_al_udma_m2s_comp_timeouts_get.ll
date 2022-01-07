; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_comp_timeouts_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_comp_timeouts_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.al_udma_m2s_comp_timeouts = type { i8*, i8*, i8*, i8*, i32, i32 }

@UDMA_M2S_COMP_CFG_1C_FORCE_RR = common dso_local global i32 0, align 4
@SRR = common dso_local global i32 0, align 4
@STRICT = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_1C_Q_PROMOTION = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i32 0, align 4
@AL_FALSE = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_APPLICATION_ACK_TOUT_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_COMP_CFG_APPLICATION_ACK_TOUT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_m2s_comp_timeouts_get(%struct.al_udma* %0, %struct.al_udma_m2s_comp_timeouts* %1) #0 {
  %3 = alloca %struct.al_udma*, align 8
  %4 = alloca %struct.al_udma_m2s_comp_timeouts*, align 8
  %5 = alloca i32, align 4
  store %struct.al_udma* %0, %struct.al_udma** %3, align 8
  store %struct.al_udma_m2s_comp_timeouts* %1, %struct.al_udma_m2s_comp_timeouts** %4, align 8
  %6 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %7 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = call i8* @al_reg_read32(i32* %11)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_FORCE_RR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @SRR, align 4
  %20 = load %struct.al_udma_m2s_comp_timeouts*, %struct.al_udma_m2s_comp_timeouts** %4, align 8
  %21 = getelementptr inbounds %struct.al_udma_m2s_comp_timeouts, %struct.al_udma_m2s_comp_timeouts* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @STRICT, align 4
  %24 = load %struct.al_udma_m2s_comp_timeouts*, %struct.al_udma_m2s_comp_timeouts** %4, align 8
  %25 = getelementptr inbounds %struct.al_udma_m2s_comp_timeouts, %struct.al_udma_m2s_comp_timeouts* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_Q_PROMOTION, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @AL_TRUE, align 4
  %33 = load %struct.al_udma_m2s_comp_timeouts*, %struct.al_udma_m2s_comp_timeouts** %4, align 8
  %34 = getelementptr inbounds %struct.al_udma_m2s_comp_timeouts, %struct.al_udma_m2s_comp_timeouts* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  br label %39

35:                                               ; preds = %26
  %36 = load i32, i32* @AL_FALSE, align 4
  %37 = load %struct.al_udma_m2s_comp_timeouts*, %struct.al_udma_m2s_comp_timeouts** %4, align 8
  %38 = getelementptr inbounds %struct.al_udma_m2s_comp_timeouts, %struct.al_udma_m2s_comp_timeouts* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH_MASK, align 4
  %42 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH_SHIFT, align 4
  %43 = call i8* @AL_REG_FIELD_GET(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.al_udma_m2s_comp_timeouts*, %struct.al_udma_m2s_comp_timeouts** %4, align 8
  %45 = getelementptr inbounds %struct.al_udma_m2s_comp_timeouts, %struct.al_udma_m2s_comp_timeouts* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH_MASK, align 4
  %48 = load i32, i32* @UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH_SHIFT, align 4
  %49 = call i8* @AL_REG_FIELD_GET(i32 %46, i32 %47, i32 %48)
  %50 = load %struct.al_udma_m2s_comp_timeouts*, %struct.al_udma_m2s_comp_timeouts** %4, align 8
  %51 = getelementptr inbounds %struct.al_udma_m2s_comp_timeouts, %struct.al_udma_m2s_comp_timeouts* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %53 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = call i8* @al_reg_read32(i32* %57)
  %59 = load %struct.al_udma_m2s_comp_timeouts*, %struct.al_udma_m2s_comp_timeouts** %4, align 8
  %60 = getelementptr inbounds %struct.al_udma_m2s_comp_timeouts, %struct.al_udma_m2s_comp_timeouts* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %62 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i8* @al_reg_read32(i32* %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @UDMA_M2S_COMP_CFG_APPLICATION_ACK_TOUT_MASK, align 4
  %71 = load i32, i32* @UDMA_M2S_COMP_CFG_APPLICATION_ACK_TOUT_SHIFT, align 4
  %72 = call i8* @AL_REG_FIELD_GET(i32 %69, i32 %70, i32 %71)
  %73 = load %struct.al_udma_m2s_comp_timeouts*, %struct.al_udma_m2s_comp_timeouts** %4, align 8
  %74 = getelementptr inbounds %struct.al_udma_m2s_comp_timeouts, %struct.al_udma_m2s_comp_timeouts* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  ret i32 0
}

declare dso_local i8* @al_reg_read32(i32*) #1

declare dso_local i8* @AL_REG_FIELD_GET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
