; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_xdb_set_win_height.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_xdb_set_win_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tui_win_list = common dso_local global i32* null, align 8
@CMD_WIN = common dso_local global i64 0, align 8
@TUI_FAILURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Invalid window height specified.\0A%s\00", align 1
@XDBWIN_HEIGHT_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @tui_xdb_set_win_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_xdb_set_win_height(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @tui_enable()
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %44

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @atoi(i8* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %10
  %16 = call i32 (...) @tui_term_height()
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = sub nsw i32 %16, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** @tui_win_list, align 8
  %21 = load i64, i64* @CMD_WIN, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @new_height_ok(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %15
  %28 = load i32*, i32** @tui_win_list, align 8
  %29 = load i64, i64* @CMD_WIN, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @tui_adjust_win_heights(i32 %31, i32 %32)
  %34 = load i64, i64* @TUI_FAILURE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27, %15
  %37 = load i32, i32* @XDBWIN_HEIGHT_USAGE, align 4
  %38 = call i32 @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %27
  br label %43

40:                                               ; preds = %10
  %41 = load i32, i32* @XDBWIN_HEIGHT_USAGE, align 4
  %42 = call i32 @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %39
  br label %47

44:                                               ; preds = %2
  %45 = load i32, i32* @XDBWIN_HEIGHT_USAGE, align 4
  %46 = call i32 @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %43
  ret void
}

declare dso_local i32 @tui_enable(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @tui_term_height(...) #1

declare dso_local i32 @new_height_ok(i32, i32) #1

declare dso_local i64 @tui_adjust_win_heights(i32, i32) #1

declare dso_local i32 @warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
