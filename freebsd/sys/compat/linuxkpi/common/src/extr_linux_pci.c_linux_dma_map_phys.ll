; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_dma_map_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_dma_map_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.linux_dma_priv* }
%struct.linux_dma_priv = type { i32, i32 }
%struct.linux_dma_obj = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@linux_dma_obj_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"More than one segment (nseg=%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_dma_map_phys(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.linux_dma_priv*, align 8
  %9 = alloca %struct.linux_dma_obj*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %14, align 8
  store %struct.linux_dma_priv* %15, %struct.linux_dma_priv** %8, align 8
  %16 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %8, align 8
  %17 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @bus_dma_id_mapped(i32 %18, i32 %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %4, align 4
  br label %118

25:                                               ; preds = %3
  %26 = load i32, i32* @linux_dma_obj_zone, align 4
  %27 = load i32, i32* @M_NOWAIT, align 4
  %28 = call %struct.linux_dma_obj* @uma_zalloc(i32 %26, i32 %27)
  store %struct.linux_dma_obj* %28, %struct.linux_dma_obj** %9, align 8
  %29 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %9, align 8
  %30 = icmp eq %struct.linux_dma_obj* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %118

32:                                               ; preds = %25
  %33 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %8, align 8
  %34 = call i32 @DMA_PRIV_LOCK(%struct.linux_dma_priv* %33)
  %35 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %8, align 8
  %36 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %9, align 8
  %39 = getelementptr inbounds %struct.linux_dma_obj, %struct.linux_dma_obj* %38, i32 0, i32 1
  %40 = call i64 @bus_dmamap_create(i32 %37, i32 0, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %8, align 8
  %44 = call i32 @DMA_PRIV_UNLOCK(%struct.linux_dma_priv* %43)
  %45 = load i32, i32* @linux_dma_obj_zone, align 4
  %46 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %9, align 8
  %47 = call i32 @uma_zfree(i32 %45, %struct.linux_dma_obj* %46)
  store i32 0, i32* %4, align 4
  br label %118

48:                                               ; preds = %32
  store i32 -1, i32* %11, align 4
  %49 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %8, align 8
  %50 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %9, align 8
  %53 = getelementptr inbounds %struct.linux_dma_obj, %struct.linux_dma_obj* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %58 = call i64 @_bus_dmamap_load_phys(i32 %51, i32 %54, i32 %55, i64 %56, i32 %57, %struct.TYPE_3__* %12, i32* %11)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %48
  %61 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %8, align 8
  %62 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %9, align 8
  %65 = getelementptr inbounds %struct.linux_dma_obj, %struct.linux_dma_obj* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bus_dmamap_destroy(i32 %63, i32 %66)
  %68 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %8, align 8
  %69 = call i32 @DMA_PRIV_UNLOCK(%struct.linux_dma_priv* %68)
  %70 = load i32, i32* @linux_dma_obj_zone, align 4
  %71 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %9, align 8
  %72 = call i32 @uma_zfree(i32 %70, %struct.linux_dma_obj* %71)
  store i32 0, i32* %4, align 4
  br label %118

73:                                               ; preds = %48
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  %76 = icmp eq i32 %75, 1
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 @KASSERT(i32 %77, i8* %80)
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %9, align 8
  %85 = getelementptr inbounds %struct.linux_dma_obj, %struct.linux_dma_obj* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %8, align 8
  %87 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %86, i32 0, i32 1
  %88 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %9, align 8
  %89 = call i32 @LINUX_DMA_PCTRIE_INSERT(i32* %87, %struct.linux_dma_obj* %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %73
  %93 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %8, align 8
  %94 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %9, align 8
  %97 = getelementptr inbounds %struct.linux_dma_obj, %struct.linux_dma_obj* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @bus_dmamap_unload(i32 %95, i32 %98)
  %100 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %8, align 8
  %101 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %9, align 8
  %104 = getelementptr inbounds %struct.linux_dma_obj, %struct.linux_dma_obj* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @bus_dmamap_destroy(i32 %102, i32 %105)
  %107 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %8, align 8
  %108 = call i32 @DMA_PRIV_UNLOCK(%struct.linux_dma_priv* %107)
  %109 = load i32, i32* @linux_dma_obj_zone, align 4
  %110 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %9, align 8
  %111 = call i32 @uma_zfree(i32 %109, %struct.linux_dma_obj* %110)
  store i32 0, i32* %4, align 4
  br label %118

112:                                              ; preds = %73
  %113 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %8, align 8
  %114 = call i32 @DMA_PRIV_UNLOCK(%struct.linux_dma_priv* %113)
  %115 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %9, align 8
  %116 = getelementptr inbounds %struct.linux_dma_obj, %struct.linux_dma_obj* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %112, %92, %60, %42, %31, %23
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @bus_dma_id_mapped(i32, i32, i64) #1

declare dso_local %struct.linux_dma_obj* @uma_zalloc(i32, i32) #1

declare dso_local i32 @DMA_PRIV_LOCK(%struct.linux_dma_priv*) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @DMA_PRIV_UNLOCK(%struct.linux_dma_priv*) #1

declare dso_local i32 @uma_zfree(i32, %struct.linux_dma_obj*) #1

declare dso_local i64 @_bus_dmamap_load_phys(i32, i32, i32, i64, i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LINUX_DMA_PCTRIE_INSERT(i32*, %struct.linux_dma_obj*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
