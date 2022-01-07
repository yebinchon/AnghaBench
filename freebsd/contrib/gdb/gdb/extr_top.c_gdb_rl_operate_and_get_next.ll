; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_gdb_rl_operate_and_get_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_gdb_rl_operate_and_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@event_loop_p = common dso_local global i64 0, align 8
@gdb_rl_operate_and_get_next_completion = common dso_local global i64 0, align 8
@after_char_processing_hook = common dso_local global i64 0, align 8
@rl_pre_input_hook = common dso_local global i32* null, align 8
@history_length = common dso_local global i32 0, align 4
@max_input_history = common dso_local global i32 0, align 4
@operate_saved_history = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @gdb_rl_operate_and_get_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdb_rl_operate_and_get_next(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @event_loop_p, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i64, i64* @gdb_rl_operate_and_get_next_completion, align 8
  store i64 %9, i64* @after_char_processing_hook, align 8
  br label %13

10:                                               ; preds = %2
  %11 = load i64, i64* @gdb_rl_operate_and_get_next_completion, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** @rl_pre_input_hook, align 8
  br label %13

13:                                               ; preds = %10, %8
  %14 = call i32 (...) @where_history()
  store i32 %14, i32* %5, align 4
  %15 = call i64 (...) @history_is_stifled()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @history_length, align 4
  %19 = load i32, i32* @max_input_history, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @history_length, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp sge i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %17
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* @operate_saved_history, align 4
  br label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @operate_saved_history, align 4
  br label %31

31:                                               ; preds = %28, %26
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @rl_newline(i32 1, i32 %32)
  ret i32 %33
}

declare dso_local i32 @where_history(...) #1

declare dso_local i64 @history_is_stifled(...) #1

declare dso_local i32 @rl_newline(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
