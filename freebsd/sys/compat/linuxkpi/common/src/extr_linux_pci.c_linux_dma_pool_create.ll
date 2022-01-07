; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_dma_pool_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_dma_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pool = type { i64, i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32, %struct.linux_dma_priv* }
%struct.linux_dma_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@dma_pool_obj_ctor = common dso_local global i32 0, align 4
@dma_pool_obj_dtor = common dso_local global i32 0, align 4
@dma_pool_obj_import = common dso_local global i32 0, align 4
@dma_pool_obj_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"lkpi-dma-pool\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_pool* @linux_dma_pool_create(i8* %0, %struct.device* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_pool*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.linux_dma_priv*, align 8
  %13 = alloca %struct.dma_pool*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.device* %1, %struct.device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.device*, %struct.device** %8, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 1
  %16 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %15, align 8
  store %struct.linux_dma_priv* %16, %struct.linux_dma_priv** %12, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.dma_pool* @kzalloc(i32 32, i32 %17)
  store %struct.dma_pool* %18, %struct.dma_pool** %13, align 8
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = load %struct.dma_pool*, %struct.dma_pool** %13, align 8
  %21 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %20, i32 0, i32 5
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.dma_pool*, %struct.dma_pool** %13, align 8
  %24 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.device*, %struct.device** %8, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @bus_get_dma_tag(i32 %27)
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %12, align 8
  %32 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.dma_pool*, %struct.dma_pool** %13, align 8
  %38 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %37, i32 0, i32 4
  %39 = call i64 @bus_dma_tag_create(i32 %28, i64 %29, i64 %30, i32 %33, i32 %34, i32* null, i32* null, i64 %35, i32 1, i64 %36, i32 0, i32* null, i32* null, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %5
  %42 = load %struct.dma_pool*, %struct.dma_pool** %13, align 8
  %43 = call i32 @kfree(%struct.dma_pool* %42)
  store %struct.dma_pool* null, %struct.dma_pool** %6, align 8
  br label %62

44:                                               ; preds = %5
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @dma_pool_obj_ctor, align 4
  %47 = load i32, i32* @dma_pool_obj_dtor, align 4
  %48 = load i32, i32* @dma_pool_obj_import, align 4
  %49 = load i32, i32* @dma_pool_obj_release, align 4
  %50 = load %struct.dma_pool*, %struct.dma_pool** %13, align 8
  %51 = call i32 @uma_zcache_create(i8* %45, i32 -1, i32 %46, i32 %47, i32* null, i32* null, i32 %48, i32 %49, %struct.dma_pool* %50, i32 0)
  %52 = load %struct.dma_pool*, %struct.dma_pool** %13, align 8
  %53 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.dma_pool*, %struct.dma_pool** %13, align 8
  %55 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %54, i32 0, i32 2
  %56 = load i32, i32* @MTX_DEF, align 4
  %57 = call i32 @mtx_init(i32* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null, i32 %56)
  %58 = load %struct.dma_pool*, %struct.dma_pool** %13, align 8
  %59 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %58, i32 0, i32 1
  %60 = call i32 @pctrie_init(i32* %59)
  %61 = load %struct.dma_pool*, %struct.dma_pool** %13, align 8
  store %struct.dma_pool* %61, %struct.dma_pool** %6, align 8
  br label %62

62:                                               ; preds = %44, %41
  %63 = load %struct.dma_pool*, %struct.dma_pool** %6, align 8
  ret %struct.dma_pool* %63
}

declare dso_local %struct.dma_pool* @kzalloc(i32, i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i64, i64, i32, i32, i32*, i32*, i64, i32, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @kfree(%struct.dma_pool*) #1

declare dso_local i32 @uma_zcache_create(i8*, i32, i32, i32, i32*, i32*, i32, i32, %struct.dma_pool*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @pctrie_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
