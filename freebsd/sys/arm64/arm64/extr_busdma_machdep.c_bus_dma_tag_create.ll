; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_busdma_machdep.c_bus_dma_tag_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_busdma_machdep.c_bus_dma_tag_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32*, i32, i32, i32, i32, i32*, i8*, i32, i32, i32, i32, i32*, i8*, i32**)* }
%struct.bus_dma_tag_common = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, i32, i32, i32, i32, i32*, i8*, i32, i32, i32, i32, i32*, i8*, i32**)* }

@bus_dma_bounce_impl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_dma_tag_create(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i8* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32* %11, i8* %12, i32** %13) #0 {
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32**, align 8
  %29 = alloca %struct.bus_dma_tag_common*, align 8
  %30 = alloca i32, align 4
  store i32* %0, i32** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32* %5, i32** %20, align 8
  store i8* %6, i8** %21, align 8
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32* %11, i32** %26, align 8
  store i8* %12, i8** %27, align 8
  store i32** %13, i32*** %28, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %14
  %34 = load i32 (i32*, i32, i32, i32, i32, i32*, i8*, i32, i32, i32, i32, i32*, i8*, i32**)*, i32 (i32*, i32, i32, i32, i32, i32*, i8*, i32, i32, i32, i32, i32*, i8*, i32**)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bus_dma_bounce_impl, i32 0, i32 0), align 8
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* %19, align 4
  %40 = load i32*, i32** %20, align 8
  %41 = load i8*, i8** %21, align 8
  %42 = load i32, i32* %22, align 4
  %43 = load i32, i32* %23, align 4
  %44 = load i32, i32* %24, align 4
  %45 = load i32, i32* %25, align 4
  %46 = load i32*, i32** %26, align 8
  %47 = load i8*, i8** %27, align 8
  %48 = load i32**, i32*** %28, align 8
  %49 = call i32 %34(i32* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32* %40, i8* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32* %46, i8* %47, i32** %48)
  store i32 %49, i32* %30, align 4
  br label %73

50:                                               ; preds = %14
  %51 = load i32*, i32** %15, align 8
  %52 = bitcast i32* %51 to %struct.bus_dma_tag_common*
  store %struct.bus_dma_tag_common* %52, %struct.bus_dma_tag_common** %29, align 8
  %53 = load %struct.bus_dma_tag_common*, %struct.bus_dma_tag_common** %29, align 8
  %54 = getelementptr inbounds %struct.bus_dma_tag_common, %struct.bus_dma_tag_common* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (i32*, i32, i32, i32, i32, i32*, i8*, i32, i32, i32, i32, i32*, i8*, i32**)*, i32 (i32*, i32, i32, i32, i32, i32*, i8*, i32, i32, i32, i32, i32*, i8*, i32**)** %56, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %19, align 4
  %63 = load i32*, i32** %20, align 8
  %64 = load i8*, i8** %21, align 8
  %65 = load i32, i32* %22, align 4
  %66 = load i32, i32* %23, align 4
  %67 = load i32, i32* %24, align 4
  %68 = load i32, i32* %25, align 4
  %69 = load i32*, i32** %26, align 8
  %70 = load i8*, i8** %27, align 8
  %71 = load i32**, i32*** %28, align 8
  %72 = call i32 %57(i32* %58, i32 %59, i32 %60, i32 %61, i32 %62, i32* %63, i8* %64, i32 %65, i32 %66, i32 %67, i32 %68, i32* %69, i8* %70, i32** %71)
  store i32 %72, i32* %30, align 4
  br label %73

73:                                               ; preds = %50, %33
  %74 = load i32, i32* %30, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
