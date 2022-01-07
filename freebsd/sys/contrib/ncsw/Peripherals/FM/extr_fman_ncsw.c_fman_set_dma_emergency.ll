; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_set_dma_emergency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_set_dma_emergency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_dma_regs = type { i32 }

@DMA_MODE_EMER_WRITE = common dso_local global i64 0, align 8
@DMA_MODE_EMER_READ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_set_dma_emergency(%struct.fman_dma_regs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fman_dma_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fman_dma_regs* %0, %struct.fman_dma_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i64, i64* @DMA_MODE_EMER_WRITE, align 8
  br label %14

12:                                               ; preds = %3
  %13 = load i64, i64* @DMA_MODE_EMER_READ, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %4, align 8
  %21 = getelementptr inbounds %struct.fman_dma_regs, %struct.fman_dma_regs* %20, i32 0, i32 0
  %22 = call i32 @ioread32be(i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %4, align 8
  %26 = getelementptr inbounds %struct.fman_dma_regs, %struct.fman_dma_regs* %25, i32 0, i32 0
  %27 = call i32 @iowrite32be(i32 %24, i32* %26)
  br label %38

28:                                               ; preds = %14
  %29 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %4, align 8
  %30 = getelementptr inbounds %struct.fman_dma_regs, %struct.fman_dma_regs* %29, i32 0, i32 0
  %31 = call i32 @ioread32be(i32* %30)
  %32 = load i32, i32* %7, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %4, align 8
  %36 = getelementptr inbounds %struct.fman_dma_regs, %struct.fman_dma_regs* %35, i32 0, i32 0
  %37 = call i32 @iowrite32be(i32 %34, i32* %36)
  br label %38

38:                                               ; preds = %28, %19
  ret void
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
