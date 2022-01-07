; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_dma_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_dma_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.linux_dma_priv* }
%struct.linux_dma_priv = type { i64 }

@GFP_DMA32 = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @linux_dma_alloc_coherent(%struct.device* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.linux_dma_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = icmp eq %struct.device* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %18, align 8
  %20 = icmp eq %struct.linux_dma_priv* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %4
  %22 = load i32*, i32** %8, align 8
  store i32 0, i32* %22, align 4
  store i8* null, i8** %5, align 8
  br label %79

23:                                               ; preds = %16
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %25, align 8
  store %struct.linux_dma_priv* %26, %struct.linux_dma_priv** %10, align 8
  %27 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %10, align 8
  %28 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %10, align 8
  %33 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  br label %45

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @GFP_DMA32, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  store i64 %41, i64* %11, align 8
  br label %44

42:                                               ; preds = %35
  %43 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  store i64 %43, i64* %11, align 8
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %31
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i64 @get_order(i64 %47)
  %49 = shl i64 %46, %48
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %55 = call i64 @kmem_alloc_contig(i64 %50, i32 %51, i32 0, i64 %52, i64 %53, i32 0, i32 %54)
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %45
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @vtophys(i8* %61)
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @linux_dma_map_phys(%struct.device* %60, i32 %62, i64 %63)
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load i8*, i8** %13, align 8
  %71 = ptrtoint i8* %70 to i32
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @kmem_free(i32 %71, i64 %72)
  store i8* null, i8** %13, align 8
  br label %74

74:                                               ; preds = %69, %59
  br label %77

75:                                               ; preds = %45
  %76 = load i32*, i32** %8, align 8
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = load i8*, i8** %13, align 8
  store i8* %78, i8** %5, align 8
  br label %79

79:                                               ; preds = %77, %21
  %80 = load i8*, i8** %5, align 8
  ret i8* %80
}

declare dso_local i64 @get_order(i64) #1

declare dso_local i64 @kmem_alloc_contig(i64, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @linux_dma_map_phys(%struct.device*, i32, i64) #1

declare dso_local i32 @vtophys(i8*) #1

declare dso_local i32 @kmem_free(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
