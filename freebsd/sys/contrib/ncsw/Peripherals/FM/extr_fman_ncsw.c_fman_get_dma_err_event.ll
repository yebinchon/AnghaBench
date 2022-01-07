; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_get_dma_err_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_get_dma_err_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_dma_regs = type { i32, i32 }

@DMA_MODE_BER = common dso_local global i32 0, align 4
@DMA_STATUS_BUS_ERR = common dso_local global i32 0, align 4
@DMA_MODE_ECC = common dso_local global i32 0, align 4
@DMA_STATUS_FM_SPDAT_ECC = common dso_local global i32 0, align 4
@DMA_STATUS_READ_ECC = common dso_local global i32 0, align 4
@DMA_STATUS_SYSTEM_WRITE_ECC = common dso_local global i32 0, align 4
@DMA_STATUS_FM_WRITE_ECC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_get_dma_err_event(%struct.fman_dma_regs* %0) #0 {
  %2 = alloca %struct.fman_dma_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fman_dma_regs* %0, %struct.fman_dma_regs** %2, align 8
  %5 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %2, align 8
  %6 = getelementptr inbounds %struct.fman_dma_regs, %struct.fman_dma_regs* %5, i32 0, i32 0
  %7 = call i32 @ioread32be(i32* %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %2, align 8
  %9 = getelementptr inbounds %struct.fman_dma_regs, %struct.fman_dma_regs* %8, i32 0, i32 1
  %10 = call i32 @ioread32be(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @DMA_MODE_BER, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @DMA_MODE_BER, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @DMA_STATUS_BUS_ERR, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %16, %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @DMA_MODE_ECC, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @DMA_MODE_ECC, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load i32, i32* @DMA_STATUS_FM_SPDAT_ECC, align 4
  %29 = load i32, i32* @DMA_STATUS_READ_ECC, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DMA_STATUS_SYSTEM_WRITE_ECC, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @DMA_STATUS_FM_WRITE_ECC, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %27, %21
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %2, align 8
  %41 = getelementptr inbounds %struct.fman_dma_regs, %struct.fman_dma_regs* %40, i32 0, i32 0
  %42 = call i32 @iowrite32be(i32 %39, i32* %41)
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
