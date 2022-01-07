; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c_allocate_bz_and_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c_allocate_bz_and_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.bounce_zone* }
%struct.bounce_zone = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }

@BUS_DMA_COULD_BOUNCE = common dso_local global i32 0, align 4
@MAX_BPAGES = common dso_local global i32 0, align 4
@BUS_DMA_MIN_ALLOC_COMP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* @allocate_bz_and_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_bz_and_pages(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bounce_zone*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %94

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load %struct.bounce_zone*, %struct.bounce_zone** %18, align 8
  %20 = icmp eq %struct.bounce_zone* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = call i32 @alloc_bounce_zone(%struct.TYPE_8__* %22)
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %95

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %16
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load %struct.bounce_zone*, %struct.bounce_zone** %30, align 8
  store %struct.bounce_zone* %31, %struct.bounce_zone** %7, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = call i32 @STAILQ_INIT(i32* %33)
  %35 = load i32, i32* @MAX_BPAGES, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BUS_DMA_MIN_ALLOC_COMP, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %28
  %43 = load %struct.bounce_zone*, %struct.bounce_zone** %7, align 8
  %44 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %89

47:                                               ; preds = %42
  %48 = load %struct.bounce_zone*, %struct.bounce_zone** %7, align 8
  %49 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %89

53:                                               ; preds = %47, %28
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @atop(i32 %56)
  %58 = call i32 @MAX(i32 %57, i32 1)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.bounce_zone*, %struct.bounce_zone** %7, align 8
  %61 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %59, %62
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @MIN(i32 %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @MAX(i32 %66, i32 1)
  store i32 %67, i32* %9, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @alloc_bounce_pages(%struct.TYPE_8__* %68, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %53
  %74 = load i32, i32* @ENOMEM, align 4
  store i32 %74, i32* %3, align 4
  br label %95

75:                                               ; preds = %53
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @BUS_DMA_MIN_ALLOC_COMP, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i32, i32* @BUS_DMA_MIN_ALLOC_COMP, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %75
  br label %89

89:                                               ; preds = %88, %47, %42
  %90 = load %struct.bounce_zone*, %struct.bounce_zone** %7, align 8
  %91 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %89, %2
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %73, %25
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @alloc_bounce_zone(%struct.TYPE_8__*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @atop(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @alloc_bounce_pages(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
