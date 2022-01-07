; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_gdb_readline_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_gdb_readline_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@event_loop_p = common dso_local global i64 0, align 8
@after_char_processing_hook = common dso_local global i32* null, align 8
@rl_pre_input_hook = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gdb_readline_wrapper(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @event_loop_p, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32*, i32** @after_char_processing_hook, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = load i32*, i32** @after_char_processing_hook, align 8
  store i32* %9, i32** @rl_pre_input_hook, align 8
  store i32* null, i32** @after_char_processing_hook, align 8
  br label %10

10:                                               ; preds = %8, %5, %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @readline(i8* %11)
  ret i8* %12
}

declare dso_local i8* @readline(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
