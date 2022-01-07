; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_init_page_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_init_page_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lines_per_page = common dso_local global i32 0, align 4
@chars_per_line = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"li\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"EMACS\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@gdb_stdout = common dso_local global i32 0, align 4
@SIGWINCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_page_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @rl_reset_terminal(i32* null)
  %4 = call i32 @rl_get_screen_size(i32* %1, i32* %2)
  %5 = load i32, i32* %1, align 4
  store i32 %5, i32* @lines_per_page, align 4
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* @chars_per_line, align 4
  %7 = call i64 @tgetnum(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = call i64 @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %0
  %13 = load i32, i32* @UINT_MAX, align 4
  store i32 %13, i32* @lines_per_page, align 4
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i32, i32* @gdb_stdout, align 4
  %16 = call i32 @ui_file_isatty(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @UINT_MAX, align 4
  store i32 %19, i32* @lines_per_page, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = call i32 (...) @set_screen_size()
  %22 = call i32 (...) @set_width()
  ret void
}

declare dso_local i32 @rl_reset_terminal(i32*) #1

declare dso_local i32 @rl_get_screen_size(i32*, i32*) #1

declare dso_local i64 @tgetnum(i8*) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @ui_file_isatty(i32) #1

declare dso_local i32 @set_screen_size(...) #1

declare dso_local i32 @set_width(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
