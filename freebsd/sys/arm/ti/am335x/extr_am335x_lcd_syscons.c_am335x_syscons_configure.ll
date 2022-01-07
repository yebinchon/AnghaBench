; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd_syscons.c_am335x_syscons_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd_syscons.c_am335x_syscons_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_adapter_softc = type { i32, i64, i64, i32 }

@va_softc = common dso_local global %struct.video_adapter_softc zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"panel_width\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"panel_height\00", align 1
@FB_WIDTH = common dso_local global i64 0, align 8
@FB_HEIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @am335x_syscons_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_syscons_configure(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.video_adapter_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.video_adapter_softc* @va_softc, %struct.video_adapter_softc** %4, align 8
  %8 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %9 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

13:                                               ; preds = %1
  %14 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %15 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %17 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = call i32 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %44

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @am335x_syscons_find_panel_node(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @OF_getencprop(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %7, i32 8)
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %33 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @OF_getencprop(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %7, i32 8)
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %42 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %38, %34
  br label %44

44:                                               ; preds = %43, %21, %13
  %45 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %46 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i64, i64* @FB_WIDTH, align 8
  %51 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %52 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %55 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i64, i64* @FB_HEIGHT, align 8
  %60 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %61 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %64 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %63, i32 0, i32 3
  %65 = call i32 @am335x_syscons_init(i32 0, i32* %64, i32 0)
  %66 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %67 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %62, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @am335x_syscons_find_panel_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i8**, i32) #1

declare dso_local i32 @am335x_syscons_init(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
