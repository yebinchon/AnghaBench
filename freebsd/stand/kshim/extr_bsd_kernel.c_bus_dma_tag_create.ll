; ModuleID = '/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_bus_dma_tag_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_bus_dma_tag_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_dma_tag = type { i8*, i8* }

@XXX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_dma_tag_create(%struct.bus_dma_tag* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32* %5, i8* %6, i8* %7, i32 %8, i8* %9, i32 %10, i32* %11, i8* %12, %struct.bus_dma_tag** %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca %struct.bus_dma_tag*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.bus_dma_tag**, align 8
  %30 = alloca %struct.bus_dma_tag*, align 8
  store %struct.bus_dma_tag* %0, %struct.bus_dma_tag** %16, align 8
  store i8* %1, i8** %17, align 8
  store i8* %2, i8** %18, align 8
  store i32 %3, i32* %19, align 4
  store i32 %4, i32* %20, align 4
  store i32* %5, i32** %21, align 8
  store i8* %6, i8** %22, align 8
  store i8* %7, i8** %23, align 8
  store i32 %8, i32* %24, align 4
  store i8* %9, i8** %25, align 8
  store i32 %10, i32* %26, align 4
  store i32* %11, i32** %27, align 8
  store i8* %12, i8** %28, align 8
  store %struct.bus_dma_tag** %13, %struct.bus_dma_tag*** %29, align 8
  %31 = load i32, i32* @XXX, align 4
  %32 = load i32, i32* @XXX, align 4
  %33 = call %struct.bus_dma_tag* @malloc(i32 16, i32 %31, i32 %32)
  store %struct.bus_dma_tag* %33, %struct.bus_dma_tag** %30, align 8
  %34 = load %struct.bus_dma_tag**, %struct.bus_dma_tag*** %29, align 8
  %35 = load %struct.bus_dma_tag*, %struct.bus_dma_tag** %34, align 8
  %36 = icmp eq %struct.bus_dma_tag* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %14
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %15, align 4
  br label %48

39:                                               ; preds = %14
  %40 = load i8*, i8** %17, align 8
  %41 = load %struct.bus_dma_tag*, %struct.bus_dma_tag** %30, align 8
  %42 = getelementptr inbounds %struct.bus_dma_tag, %struct.bus_dma_tag* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %23, align 8
  %44 = load %struct.bus_dma_tag*, %struct.bus_dma_tag** %30, align 8
  %45 = getelementptr inbounds %struct.bus_dma_tag, %struct.bus_dma_tag* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.bus_dma_tag*, %struct.bus_dma_tag** %30, align 8
  %47 = load %struct.bus_dma_tag**, %struct.bus_dma_tag*** %29, align 8
  store %struct.bus_dma_tag* %46, %struct.bus_dma_tag** %47, align 8
  store i32 0, i32* %15, align 4
  br label %48

48:                                               ; preds = %39, %37
  %49 = load i32, i32* %15, align 4
  ret i32 %49
}

declare dso_local %struct.bus_dma_tag* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
