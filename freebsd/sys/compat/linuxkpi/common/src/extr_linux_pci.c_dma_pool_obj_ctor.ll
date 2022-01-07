; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_dma_pool_obj_ctor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_dma_pool_obj_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_dma_obj = type { i32, i32, i32 }
%struct.dma_pool = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"More than one segment (nseg=%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @dma_pool_obj_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_pool_obj_ctor(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.linux_dma_obj*, align 8
  %11 = alloca %struct.dma_pool*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.linux_dma_obj*
  store %struct.linux_dma_obj* %16, %struct.linux_dma_obj** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.dma_pool*
  store %struct.dma_pool* %18, %struct.dma_pool** %11, align 8
  store i32 -1, i32* %13, align 4
  %19 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %20 = call i32 @DMA_POOL_LOCK(%struct.dma_pool* %19)
  %21 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %22 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %10, align 8
  %25 = getelementptr inbounds %struct.linux_dma_obj, %struct.linux_dma_obj* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %10, align 8
  %28 = getelementptr inbounds %struct.linux_dma_obj, %struct.linux_dma_obj* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vtophys(i32 %29)
  %31 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %32 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %35 = call i32 @_bus_dmamap_load_phys(i32 %23, i32 %26, i32 %30, i32 %33, i32 %34, %struct.TYPE_3__* %14, i32* %13)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %37 = call i32 @DMA_POOL_UNLOCK(%struct.dma_pool* %36)
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %55

42:                                               ; preds = %4
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  %45 = icmp eq i32 %44, 1
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @KASSERT(i32 %46, i8* %49)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %10, align 8
  %54 = getelementptr inbounds %struct.linux_dma_obj, %struct.linux_dma_obj* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %42, %40
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @DMA_POOL_LOCK(%struct.dma_pool*) #1

declare dso_local i32 @_bus_dmamap_load_phys(i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @vtophys(i32) #1

declare dso_local i32 @DMA_POOL_UNLOCK(%struct.dma_pool*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
