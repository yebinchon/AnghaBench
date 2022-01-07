; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/win32con/extr_win_driver.c_drv_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/win32con/extr_win_driver.c_drv_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"win32con::drv_read(%p)\00", align 1
@KEY_EVENT = common dso_local global i64 0, align 8
@MOUSE_EVENT = common dso_local global i64 0, align 8
@KEY_MOUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*)* @drv_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_read(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %7, align 4
  %12 = call i32 (...) @AssertTCB()
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @assert(i32* %13)
  %15 = call i32 (...) @SetSP()
  %16 = call i32 @memset(%struct.TYPE_17__* %8, i32 0, i32 40)
  %17 = call i32 @T_CALLED(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = ptrtoint %struct.TYPE_15__* %18 to i32
  %20 = call i32 @T(i32 %19)
  br label %21

21:                                               ; preds = %95, %94, %75, %73, %44, %2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ReadConsoleInput(i32 %24, %struct.TYPE_17__* %8, i32 1, i64* %10)
  store i64 %25, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %96

27:                                               ; preds = %21
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %95

30:                                               ; preds = %27
  %31 = load i64, i64* %10, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %95

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @KEY_EVENT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %21

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %11, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %45
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @MapKey(%struct.TYPE_15__* %66, i32 %67)
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 0, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %21

74:                                               ; preds = %65
  br label %96

75:                                               ; preds = %60
  br label %21

76:                                               ; preds = %45
  br label %96

77:                                               ; preds = %33
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @MOUSE_EVENT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @handle_mouse(%struct.TYPE_15__* %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @KEY_MOUSE, align 4
  %91 = load i32*, i32** %5, align 8
  store i32 %90, i32* %91, align 4
  br label %96

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %77
  br label %94

94:                                               ; preds = %93
  br label %21

95:                                               ; preds = %30, %27
  br label %21

96:                                               ; preds = %89, %76, %74, %21
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @returnCode(i32 %97)
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @AssertTCB(...) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @SetSP(...) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @T_CALLED(i8*) #1

declare dso_local i64 @ReadConsoleInput(i32, %struct.TYPE_17__*, i32, i64*) #1

declare dso_local i32 @MapKey(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @handle_mouse(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @returnCode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
