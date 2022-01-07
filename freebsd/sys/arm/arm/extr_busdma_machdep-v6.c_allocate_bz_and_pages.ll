; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v6.c_allocate_bz_and_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v6.c_allocate_bz_and_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.bounce_zone* }
%struct.bounce_zone = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@BUS_DMA_COULD_BOUNCE = common dso_local global i32 0, align 4
@MAX_BPAGES = common dso_local global i32 0, align 4
@BUS_DMA_MIN_ALLOC_COMP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* @allocate_bz_and_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_bz_and_pages(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.bounce_zone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load %struct.bounce_zone*, %struct.bounce_zone** %11, align 8
  %13 = icmp eq %struct.bounce_zone* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = call i32 @alloc_bounce_zone(%struct.TYPE_8__* %15)
  store i32 %16, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %102

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load %struct.bounce_zone*, %struct.bounce_zone** %23, align 8
  store %struct.bounce_zone* %24, %struct.bounce_zone** %6, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = call i32 @STAILQ_INIT(i32* %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* @MAX_BPAGES, align 4
  store i32 %35, i32* %7, align 4
  br label %41

36:                                               ; preds = %21
  %37 = load %struct.bounce_zone*, %struct.bounce_zone** %6, align 8
  %38 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 2, %39
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %34
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @BUS_DMA_MIN_ALLOC_COMP, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %41
  %49 = load %struct.bounce_zone*, %struct.bounce_zone** %6, align 8
  %50 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %97

53:                                               ; preds = %48
  %54 = load %struct.bounce_zone*, %struct.bounce_zone** %6, align 8
  %55 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %97

59:                                               ; preds = %53, %41
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = call i32 @roundup2(i32 %62, i32 %63)
  %65 = call i32 @atop(i32 %64)
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.bounce_zone*, %struct.bounce_zone** %6, align 8
  %69 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @MIN(i32 %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @MAX(i32 %74, i32 2)
  store i32 %75, i32* %9, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @alloc_bounce_pages(%struct.TYPE_8__* %76, i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %59
  %82 = load i32, i32* @ENOMEM, align 4
  store i32 %82, i32* %3, align 4
  br label %102

83:                                               ; preds = %59
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @BUS_DMA_MIN_ALLOC_COMP, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* @BUS_DMA_MIN_ALLOC_COMP, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %83
  br label %97

97:                                               ; preds = %96, %53, %48
  %98 = load %struct.bounce_zone*, %struct.bounce_zone** %6, align 8
  %99 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %97, %81, %18
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @alloc_bounce_zone(%struct.TYPE_8__*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @atop(i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @alloc_bounce_pages(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
