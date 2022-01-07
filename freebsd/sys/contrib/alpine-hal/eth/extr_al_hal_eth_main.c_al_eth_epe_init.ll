; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_epe_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_epe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"eth [%s]: disable rx parser\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"eth [%s]: enable rx parser\0A\00", align 1
@AL_ETH_EPE_ENTRIES_NUM = common dso_local global i32 0, align 4
@al_eth_epe_p_regs = common dso_local global i32* null, align 8
@al_eth_epe_control_table = common dso_local global i32* null, align 8
@EC_RFW_META_L3_LEN_CALC = common dso_local global i32 0, align 4
@EC_RFW_CHECKSUM_HDR_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_hal_eth_adapter*)* @al_eth_epe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_epe_init(%struct.al_hal_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_hal_eth_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %2, align 8
  %4 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %1
  %9 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @al_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = call i32 @al_reg_write32(i32* %19, i32 134217728)
  %21 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @al_reg_write32(i32* %27, i32 7)
  %29 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = call i32 @al_reg_write32(i32* %35, i32 134217728)
  %37 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = call i32 @al_reg_write32(i32* %43, i32 7)
  br label %124

45:                                               ; preds = %1
  %46 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @al_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %66, %45
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @AL_ETH_EPE_ENTRIES_NUM, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = load i32*, i32** @al_eth_epe_p_regs, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32*, i32** @al_eth_epe_control_table, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @al_eth_epe_entry_set(%struct.al_hal_eth_adapter* %55, i32 %56, i32* %60, i32* %64)
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %50

69:                                               ; preds = %50
  %70 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = call i32 @al_reg_write32(i32* %76, i32 134217856)
  %78 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @al_reg_write32(i32* %84, i32 7)
  %86 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = call i32 @al_reg_write32(i32* %92, i32 134217856)
  %94 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %95 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = call i32 @al_reg_write32(i32* %100, i32 0)
  %102 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %103 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = call i32 @al_reg_write32(i32* %108, i32 262148)
  %110 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %111 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* @EC_RFW_META_L3_LEN_CALC, align 4
  %116 = call i32 @al_reg_write32(i32* %114, i32 %115)
  %117 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %118 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* @EC_RFW_CHECKSUM_HDR_SEL, align 4
  %123 = call i32 @al_reg_write32(i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %69, %8
  ret void
}

declare dso_local i32 @al_dbg(i8*, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @al_eth_epe_entry_set(%struct.al_hal_eth_adapter*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
