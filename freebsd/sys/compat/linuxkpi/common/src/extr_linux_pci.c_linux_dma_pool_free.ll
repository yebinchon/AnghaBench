; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_dma_pool_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_dma_pool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pool = type { i32, i32 }
%struct.linux_dma_obj = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_dma_pool_free(%struct.dma_pool* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dma_pool*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.linux_dma_obj*, align 8
  store %struct.dma_pool* %0, %struct.dma_pool** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %9 = call i32 @DMA_POOL_LOCK(%struct.dma_pool* %8)
  %10 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %11 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %10, i32 0, i32 1
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.linux_dma_obj* @LINUX_DMA_PCTRIE_LOOKUP(i32* %11, i32 %12)
  store %struct.linux_dma_obj* %13, %struct.linux_dma_obj** %7, align 8
  %14 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %7, align 8
  %15 = icmp eq %struct.linux_dma_obj* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %18 = call i32 @DMA_POOL_UNLOCK(%struct.dma_pool* %17)
  br label %32

19:                                               ; preds = %3
  %20 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %21 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %20, i32 0, i32 1
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @LINUX_DMA_PCTRIE_REMOVE(i32* %21, i32 %22)
  %24 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %25 = call i32 @DMA_POOL_UNLOCK(%struct.dma_pool* %24)
  %26 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %27 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %7, align 8
  %30 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %31 = call i32 @uma_zfree_arg(i32 %28, %struct.linux_dma_obj* %29, %struct.dma_pool* %30)
  br label %32

32:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32 @DMA_POOL_LOCK(%struct.dma_pool*) #1

declare dso_local %struct.linux_dma_obj* @LINUX_DMA_PCTRIE_LOOKUP(i32*, i32) #1

declare dso_local i32 @DMA_POOL_UNLOCK(%struct.dma_pool*) #1

declare dso_local i32 @LINUX_DMA_PCTRIE_REMOVE(i32*, i32) #1

declare dso_local i32 @uma_zfree_arg(i32, %struct.linux_dma_obj*, %struct.dma_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
