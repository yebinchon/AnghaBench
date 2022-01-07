; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/win32con/extr_win_driver.c_MapAttr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/win32con/extr_win_driver.c_MapAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@A_COLOR = common dso_local global i32 0, align 4
@NUMPAIRS = common dso_local global i32 0, align 4
@A_REVERSE = common dso_local global i32 0, align 4
@A_STANDOUT = common dso_local global i32 0, align 4
@BACKGROUND_INTENSITY = common dso_local global i32 0, align 4
@A_BOLD = common dso_local global i32 0, align 4
@FOREGROUND_INTENSITY = common dso_local global i32 0, align 4
@A_DIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @MapAttr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MapAttr(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @A_COLOR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %3
  %15 = call i32 (...) @AssertTCB()
  %16 = call i32 (...) @SetSP()
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @PairNumber(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @NUMPAIRS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  %33 = call %struct.TYPE_2__* @PropOf(i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 65280
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %31, %28, %25, %21, %14
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @A_REVERSE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 65280
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 7
  %55 = shl i32 %54, 4
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 112
  %58 = ashr i32 %57, 4
  %59 = or i32 %55, %58
  %60 = or i32 %52, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %50, %45
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @A_STANDOUT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, 65280
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, 7
  %71 = shl i32 %70, 4
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 112
  %74 = ashr i32 %73, 4
  %75 = or i32 %71, %74
  %76 = or i32 %68, %75
  %77 = load i32, i32* @BACKGROUND_INTENSITY, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %66, %61
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @A_BOLD, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @FOREGROUND_INTENSITY, align 4
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @A_DIM, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @BACKGROUND_INTENSITY, align 4
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @AssertTCB(...) #1

declare dso_local i32 @SetSP(...) #1

declare dso_local i32 @PairNumber(i32) #1

declare dso_local %struct.TYPE_2__* @PropOf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
