; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_DmaErrEvent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_DmaErrEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (i32, i32)*, %struct.TYPE_4__*, i32 (i32, i64, i64, i32, i64, i64)*, %struct.fman_dma_regs* }
%struct.TYPE_4__ = type { i64* }
%struct.fman_dma_regs = type { i32 }

@DMA_STATUS_BUS_ERR = common dso_local global i32 0, align 4
@DMA_TRANSFER_PORTID_MASK = common dso_local global i32 0, align 4
@DMA_TRANSFER_PORTID_SHIFT = common dso_local global i32 0, align 4
@DMA_TRANSFER_TNUM_MASK = common dso_local global i32 0, align 4
@DMA_TRANSFER_TNUM_SHIFT = common dso_local global i32 0, align 4
@DMA_TRANSFER_LIODN_MASK = common dso_local global i32 0, align 4
@e_FM_PORT_TYPE_DUMMY = common dso_local global i64 0, align 8
@DMA_STATUS_FM_SPDAT_ECC = common dso_local global i32 0, align 4
@e_FM_EX_DMA_SINGLE_PORT_ECC = common dso_local global i32 0, align 4
@DMA_STATUS_READ_ECC = common dso_local global i32 0, align 4
@e_FM_EX_DMA_READ_ECC = common dso_local global i32 0, align 4
@DMA_STATUS_SYSTEM_WRITE_ECC = common dso_local global i32 0, align 4
@e_FM_EX_DMA_SYSTEM_WRITE_ECC = common dso_local global i32 0, align 4
@DMA_STATUS_FM_WRITE_ECC = common dso_local global i32 0, align 4
@e_FM_EX_DMA_FM_WRITE_ECC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @DmaErrEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DmaErrEvent(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fman_dma_regs*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %12 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %11, align 8
  store %struct.fman_dma_regs* %12, %struct.fman_dma_regs** %9, align 8
  %13 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %9, align 8
  %14 = call i32 @fman_get_dma_err_event(%struct.fman_dma_regs* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @DMA_STATUS_BUS_ERR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %76

19:                                               ; preds = %1
  %20 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %9, align 8
  %21 = call i32 @fman_get_dma_com_id(%struct.fman_dma_regs* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @DMA_TRANSFER_PORTID_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @DMA_TRANSFER_PORTID_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @IN_RANGE(i32 1, i64 %28, i32 63)
  %30 = call i32 @ASSERT_COND(i32 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @HW_PORT_ID_TO_SW_PORT_ID(i64 %31, i64 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @DMA_TRANSFER_TNUM_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @DMA_TRANSFER_TNUM_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @DMA_TRANSFER_LIODN_MASK, align 4
  %42 = and i32 %40, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %8, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @e_FM_PORT_TYPE_DUMMY, align 8
  %53 = icmp ne i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT_COND(i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load i32 (i32, i64, i64, i32, i64, i64)*, i32 (i32, i64, i64, i32, i64, i64)** %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %9, align 8
  %72 = call i32 @fman_get_dma_addr(%struct.fman_dma_regs* %71)
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 %58(i32 %61, i64 %69, i64 %70, i32 %72, i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %19, %1
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @DMA_STATUS_FM_SPDAT_ECC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32 (i32, i32)*, i32 (i32, i32)** %83, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @e_FM_EX_DMA_SINGLE_PORT_ECC, align 4
  %89 = call i32 %84(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %76
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @DMA_STATUS_READ_ECC, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32 (i32, i32)*, i32 (i32, i32)** %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @e_FM_EX_DMA_READ_ECC, align 4
  %103 = call i32 %98(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %95, %90
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @DMA_STATUS_SYSTEM_WRITE_ECC, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32 (i32, i32)*, i32 (i32, i32)** %111, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @e_FM_EX_DMA_SYSTEM_WRITE_ECC, align 4
  %117 = call i32 %112(i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %109, %104
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @DMA_STATUS_FM_WRITE_ECC, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %118
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i32 (i32, i32)*, i32 (i32, i32)** %125, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @e_FM_EX_DMA_FM_WRITE_ECC, align 4
  %131 = call i32 %126(i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %123, %118
  ret void
}

declare dso_local i32 @fman_get_dma_err_event(%struct.fman_dma_regs*) #1

declare dso_local i32 @fman_get_dma_com_id(%struct.fman_dma_regs*) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @IN_RANGE(i32, i64, i32) #1

declare dso_local i32 @HW_PORT_ID_TO_SW_PORT_ID(i64, i64) #1

declare dso_local i32 @fman_get_dma_addr(%struct.fman_dma_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
