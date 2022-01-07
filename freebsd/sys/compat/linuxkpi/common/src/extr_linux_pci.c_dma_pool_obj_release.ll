; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_dma_pool_obj_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_dma_pool_obj_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pool = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.linux_dma_priv* }
%struct.linux_dma_priv = type { i32 }
%struct.linux_dma_obj = type { i32, i32 }

@linux_dma_obj_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i32)* @dma_pool_obj_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_pool_obj_release(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_pool*, align 8
  %8 = alloca %struct.linux_dma_priv*, align 8
  %9 = alloca %struct.linux_dma_obj*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.dma_pool*
  store %struct.dma_pool* %12, %struct.dma_pool** %7, align 8
  %13 = load %struct.dma_pool*, %struct.dma_pool** %7, align 8
  %14 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %16, align 8
  store %struct.linux_dma_priv* %17, %struct.linux_dma_priv** %8, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %42, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to %struct.linux_dma_obj*
  store %struct.linux_dma_obj* %28, %struct.linux_dma_obj** %9, align 8
  %29 = load %struct.dma_pool*, %struct.dma_pool** %7, align 8
  %30 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %9, align 8
  %33 = getelementptr inbounds %struct.linux_dma_obj, %struct.linux_dma_obj* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %9, align 8
  %36 = getelementptr inbounds %struct.linux_dma_obj, %struct.linux_dma_obj* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bus_dmamem_free(i32 %31, i32 %34, i32 %37)
  %39 = load i32, i32* @linux_dma_obj_zone, align 4
  %40 = load %struct.linux_dma_obj*, %struct.linux_dma_obj** %9, align 8
  %41 = call i32 @uma_zfree(i32 %39, %struct.linux_dma_obj* %40)
  br label %42

42:                                               ; preds = %22
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %18

45:                                               ; preds = %18
  ret void
}

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.linux_dma_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
