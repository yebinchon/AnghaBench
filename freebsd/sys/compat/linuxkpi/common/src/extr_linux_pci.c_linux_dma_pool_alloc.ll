; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_dma_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_dma_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pool = type { i32, i32 }
%struct.linux_dma_obj = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @linux_dma_pool_alloc(%struct.dma_pool* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dma_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.linux_dma_obj*, align 8
  store %struct.dma_pool* %0, %struct.dma_pool** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %10 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.linux_dma_obj* @uma_zalloc_arg(i32 %11, %struct.dma_pool* %12, i32 %13)
  store %struct.linux_dma_obj* %14, %struct.linux_dma_obj** %8, align 8
  %15 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %8, align 8
  %16 = icmp eq %struct.linux_dma_obj* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %45

18:                                               ; preds = %3
  %19 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %20 = call i32 @DMA_POOL_LOCK(%struct.dma_pool* %19)
  %21 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %22 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %21, i32 0, i32 1
  %23 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %8, align 8
  %24 = call i64 @LINUX_DMA_PCTRIE_INSERT(i32* %22, %struct.linux_dma_obj* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %28 = call i32 @DMA_POOL_UNLOCK(%struct.dma_pool* %27)
  %29 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %30 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %8, align 8
  %33 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %34 = call i32 @uma_zfree_arg(i32 %31, %struct.linux_dma_obj* %32, %struct.dma_pool* %33)
  store i8* null, i8** %4, align 8
  br label %45

35:                                               ; preds = %18
  %36 = load %struct.dma_pool*, %struct.dma_pool** %5, align 8
  %37 = call i32 @DMA_POOL_UNLOCK(%struct.dma_pool* %36)
  %38 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %8, align 8
  %39 = getelementptr inbounds %struct.linux_dma_obj, %struct.linux_dma_obj* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %8, align 8
  %43 = getelementptr inbounds %struct.linux_dma_obj, %struct.linux_dma_obj* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %35, %26, %17
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

declare dso_local %struct.linux_dma_obj* @uma_zalloc_arg(i32, %struct.dma_pool*, i32) #1

declare dso_local i32 @DMA_POOL_LOCK(%struct.dma_pool*) #1

declare dso_local i64 @LINUX_DMA_PCTRIE_INSERT(i32*, %struct.linux_dma_obj*) #1

declare dso_local i32 @DMA_POOL_UNLOCK(%struct.dma_pool*) #1

declare dso_local i32 @uma_zfree_arg(i32, %struct.linux_dma_obj*, %struct.dma_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
