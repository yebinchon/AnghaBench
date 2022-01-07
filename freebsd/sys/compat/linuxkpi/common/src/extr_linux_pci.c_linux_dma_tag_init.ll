; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_dma_tag_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_dma_tag_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.linux_dma_priv* }
%struct.linux_dma_priv = type { i64, i64 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_dma_tag_init(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.linux_dma_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 1
  %10 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %9, align 8
  store %struct.linux_dma_priv* %10, %struct.linux_dma_priv** %6, align 8
  %11 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %6, align 8
  %12 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %6, align 8
  %17 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %44

22:                                               ; preds = %15
  %23 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %6, align 8
  %24 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @bus_dma_tag_destroy(i64 %25)
  br label %27

27:                                               ; preds = %22, %2
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %6, align 8
  %30 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bus_get_dma_tag(i32 %33)
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %37 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %38 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %39 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %6, align 8
  %40 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %39, i32 0, i32 1
  %41 = call i32 @bus_dma_tag_create(i32 %34, i32 1, i32 0, i64 %35, i32 %36, i32* null, i32* null, i32 %37, i32 1, i32 %38, i32 0, i32* null, i32* null, i64* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %27, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i64, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i64*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
