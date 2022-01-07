; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_s2m_no_desc_cfg_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_s2m_no_desc_cfg_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@AL_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [99 x i8] c"udam [%s]: setting timeout to 0 will cause the udma to wait forever instead of dropping the packet\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UDMA_S2M_WR_DATA_CFG_2_DROP_IF_NO_DESC = common dso_local global i64 0, align 8
@UDMA_S2M_WR_DATA_CFG_2_HINT_IF_NO_DESC = common dso_local global i64 0, align 8
@UDMA_S2M_WR_DATA_CFG_2_DESC_WAIT_TIMER_MASK = common dso_local global i32 0, align 4
@UDMA_S2M_WR_DATA_CFG_2_DESC_WAIT_TIMER_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_s2m_no_desc_cfg_set(%struct.al_udma* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_udma*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.al_udma* %0, %struct.al_udma** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.al_udma*, %struct.al_udma** %6, align 8
  %12 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i64 @al_reg_read32(i32* %16)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @AL_TRUE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.al_udma*, %struct.al_udma** %6, align 8
  %26 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @al_err(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %71

31:                                               ; preds = %21, %4
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @AL_TRUE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* @UDMA_S2M_WR_DATA_CFG_2_DROP_IF_NO_DESC, align 8
  %37 = load i64, i64* %10, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %10, align 8
  br label %44

39:                                               ; preds = %31
  %40 = load i64, i64* @UDMA_S2M_WR_DATA_CFG_2_DROP_IF_NO_DESC, align 8
  %41 = xor i64 %40, -1
  %42 = load i64, i64* %10, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @AL_TRUE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i64, i64* @UDMA_S2M_WR_DATA_CFG_2_HINT_IF_NO_DESC, align 8
  %50 = load i64, i64* %10, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %10, align 8
  br label %57

52:                                               ; preds = %44
  %53 = load i64, i64* @UDMA_S2M_WR_DATA_CFG_2_HINT_IF_NO_DESC, align 8
  %54 = xor i64 %53, -1
  %55 = load i64, i64* %10, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_2_DESC_WAIT_TIMER_MASK, align 4
  %60 = load i32, i32* @UDMA_S2M_WR_DATA_CFG_2_DESC_WAIT_TIMER_SHIFT, align 4
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @AL_REG_FIELD_SET(i64 %58, i32 %59, i32 %60, i64 %61)
  %63 = load %struct.al_udma*, %struct.al_udma** %6, align 8
  %64 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @al_reg_write32(i32* %68, i64 %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %57, %24
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @al_reg_read32(i32*) #1

declare dso_local i32 @al_err(i8*, i32) #1

declare dso_local i32 @AL_REG_FIELD_SET(i64, i32, i32, i64) #1

declare dso_local i32 @al_reg_write32(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
