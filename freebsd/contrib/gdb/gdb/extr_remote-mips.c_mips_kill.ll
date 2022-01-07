; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_kill.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mips_wait_flag = common dso_local global i64 0, align 8
@interrupt_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Interrupted while waiting for the program.\0AGive up (and stop debugging it)? \00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Ending remote MIPS debugging.\0A\00", align 1
@RETURN_QUIT = common dso_local global i32 0, align 4
@remote_debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"Sending break\0A\00", align 1
@mips_desc = common dso_local global i32 0, align 4
@mips_is_open = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mips_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_kill() #0 {
  %1 = load i64, i64* @mips_wait_flag, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %29

4:                                                ; preds = %0
  %5 = load i32, i32* @interrupt_count, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @interrupt_count, align 4
  %7 = load i32, i32* @interrupt_count, align 4
  %8 = icmp sge i32 %7, 2
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  store i32 0, i32* @interrupt_count, align 4
  %10 = call i32 (...) @target_terminal_ours()
  %11 = call i64 @query(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  store i64 0, i64* @mips_wait_flag, align 8
  %14 = call i32 (...) @close_ports()
  %15 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 (...) @target_mourn_inferior()
  %17 = load i32, i32* @RETURN_QUIT, align 4
  %18 = call i32 @throw_exception(i32 %17)
  br label %19

19:                                               ; preds = %13, %9
  %20 = call i32 (...) @target_terminal_inferior()
  br label %21

21:                                               ; preds = %19, %4
  %22 = load i64, i64* @remote_debug, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* @mips_desc, align 4
  %28 = call i32 @serial_send_break(i32 %27)
  br label %29

29:                                               ; preds = %26, %3
  ret void
}

declare dso_local i32 @target_terminal_ours(...) #1

declare dso_local i64 @query(i8*) #1

declare dso_local i32 @close_ports(...) #1

declare dso_local i32 @printf_unfiltered(i8*) #1

declare dso_local i32 @target_mourn_inferior(...) #1

declare dso_local i32 @throw_exception(i32) #1

declare dso_local i32 @target_terminal_inferior(...) #1

declare dso_local i32 @serial_send_break(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
