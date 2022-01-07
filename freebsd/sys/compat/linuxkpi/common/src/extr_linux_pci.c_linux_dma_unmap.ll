; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.linux_dma_priv* }
%struct.linux_dma_priv = type { i32, i32 }
%struct.linux_dma_obj = type { i32 }

@linux_dma_obj_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_dma_unmap(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.linux_dma_priv*, align 8
  %8 = alloca %struct.linux_dma_obj*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %10, align 8
  store %struct.linux_dma_priv* %11, %struct.linux_dma_priv** %7, align 8
  %12 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %7, align 8
  %13 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %12, i32 0, i32 1
  %14 = call i64 @pctrie_is_empty(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %53

17:                                               ; preds = %3
  %18 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %7, align 8
  %19 = call i32 @DMA_PRIV_LOCK(%struct.linux_dma_priv* %18)
  %20 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %7, align 8
  %21 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.linux_dma_obj* @LINUX_DMA_PCTRIE_LOOKUP(i32* %21, i32 %22)
  store %struct.linux_dma_obj* %23, %struct.linux_dma_obj** %8, align 8
  %24 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %8, align 8
  %25 = icmp eq %struct.linux_dma_obj* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %7, align 8
  %28 = call i32 @DMA_PRIV_UNLOCK(%struct.linux_dma_priv* %27)
  br label %53

29:                                               ; preds = %17
  %30 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %7, align 8
  %31 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @LINUX_DMA_PCTRIE_REMOVE(i32* %31, i32 %32)
  %34 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %7, align 8
  %35 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %8, align 8
  %38 = getelementptr inbounds %struct.linux_dma_obj, %struct.linux_dma_obj* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bus_dmamap_unload(i32 %36, i32 %39)
  %41 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %7, align 8
  %42 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %8, align 8
  %45 = getelementptr inbounds %struct.linux_dma_obj, %struct.linux_dma_obj* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bus_dmamap_destroy(i32 %43, i32 %46)
  %48 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %7, align 8
  %49 = call i32 @DMA_PRIV_UNLOCK(%struct.linux_dma_priv* %48)
  %50 = load i32, i32* @linux_dma_obj_zone, align 4
  %51 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %8, align 8
  %52 = call i32 @uma_zfree(i32 %50, %struct.linux_dma_obj* %51)
  br label %53

53:                                               ; preds = %29, %26, %16
  ret void
}

declare dso_local i64 @pctrie_is_empty(i32*) #1

declare dso_local i32 @DMA_PRIV_LOCK(%struct.linux_dma_priv*) #1

declare dso_local %struct.linux_dma_obj* @LINUX_DMA_PCTRIE_LOOKUP(i32*, i32) #1

declare dso_local i32 @DMA_PRIV_UNLOCK(%struct.linux_dma_priv*) #1

declare dso_local i32 @LINUX_DMA_PCTRIE_REMOVE(i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.linux_dma_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
