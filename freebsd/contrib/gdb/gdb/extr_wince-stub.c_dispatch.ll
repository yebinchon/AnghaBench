; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i32] [i32 68, i32 105, i32 115, i32 112, i32 97, i32 116, i32 99, i32 104, i32 0], align 4
@skip_next_id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i32] [i32 73, i32 110, i32 118, i32 97, i32 108, i32 105, i32 100, i32 32, i32 99, i32 111, i32 109, i32 109, i32 97, i32 110, i32 100, i32 32, i32 105, i32 100, i32 32, i32 114, i32 101, i32 99, i32 101, i32 105, i32 118, i32 101, i32 100, i32 58, i32 32, i32 37, i32 100, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 71, i32 68, i32 66, i32 0], align 4
@MB_ICONERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [80 x i32], align 16
  store i32 %0, i32* %2, align 4
  br label %5

5:                                                ; preds = %60, %1
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @sockread(i8* bitcast ([9 x i32]* @.str to i8*), i32 %6, i32* %3, i32 4)
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %61

9:                                                ; preds = %5
  store i32 1, i32* @skip_next_id, align 4
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %53 [
    i32 139, label %11
    i32 131, label %14
    i32 129, label %17
    i32 138, label %20
    i32 135, label %23
    i32 137, label %26
    i32 128, label %29
    i32 130, label %32
    i32 132, label %35
    i32 136, label %38
    i32 140, label %41
    i32 141, label %44
    i32 133, label %47
    i32 134, label %50
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @create_process(i32 %12)
  br label %60

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @terminate_process(i32 %15)
  br label %60

17:                                               ; preds = %9
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @wait_for_debug_event(i32 %18)
  br label %60

20:                                               ; preds = %9
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @get_thread_context(i32 %21)
  br label %60

23:                                               ; preds = %9
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @set_thread_context(i32 %24)
  br label %60

26:                                               ; preds = %9
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @read_process_memory(i32 %27)
  br label %60

29:                                               ; preds = %9
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @write_process_memory(i32 %30)
  br label %60

32:                                               ; preds = %9
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @thread_alive(i32 %33)
  br label %60

35:                                               ; preds = %9
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @suspend_thread(i32 %36)
  br label %60

38:                                               ; preds = %9
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @resume_thread(i32 %39)
  br label %60

41:                                               ; preds = %9
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @continue_debug_event(i32 %42)
  br label %60

44:                                               ; preds = %9
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @close_handle(i32 %45)
  br label %60

47:                                               ; preds = %9
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @terminate_process(i32 %48)
  br label %61

50:                                               ; preds = %9
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @flag_single_step(i32 %51)
  br label %60

53:                                               ; preds = %9
  %54 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 0
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @wsprintfW(i32* %54, i8* bitcast ([32 x i32]* @.str.1 to i8*), i32 %55)
  %57 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 0
  %58 = load i32, i32* @MB_ICONERROR, align 4
  %59 = call i32 @MessageBoxW(i32* null, i32* %57, i8* bitcast ([4 x i32]* @.str.2 to i8*), i32 %58)
  store i32 0, i32* @skip_next_id, align 4
  br label %60

60:                                               ; preds = %53, %50, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11
  br label %5

61:                                               ; preds = %47, %5
  ret void
}

declare dso_local i64 @sockread(i8*, i32, i32*, i32) #1

declare dso_local i32 @create_process(i32) #1

declare dso_local i32 @terminate_process(i32) #1

declare dso_local i32 @wait_for_debug_event(i32) #1

declare dso_local i32 @get_thread_context(i32) #1

declare dso_local i32 @set_thread_context(i32) #1

declare dso_local i32 @read_process_memory(i32) #1

declare dso_local i32 @write_process_memory(i32) #1

declare dso_local i32 @thread_alive(i32) #1

declare dso_local i32 @suspend_thread(i32) #1

declare dso_local i32 @resume_thread(i32) #1

declare dso_local i32 @continue_debug_event(i32) #1

declare dso_local i32 @close_handle(i32) #1

declare dso_local i32 @flag_single_step(i32) #1

declare dso_local i32 @wsprintfW(i32*, i8*, i32) #1

declare dso_local i32 @MessageBoxW(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
