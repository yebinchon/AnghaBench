; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_cxa_thread_atexit_impl.c___cxa_thread_call_dtors.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_cxa_thread_atexit_impl.c___cxa_thread_call_dtors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CXA_DTORS_ITERATIONS = common dso_local global i32 0, align 4
@dtors = common dso_local global i32 0, align 4
@walk_cb_call = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"Thread %p is exiting with more thread-specific dtors created after %d iterations of destructor calls\0A\00", align 1
@walk_cb_nocall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cxa_thread_call_dtors() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %15, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @CXA_DTORS_ITERATIONS, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = call i32 @LIST_EMPTY(i32* @dtors)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i1 [ false, %2 ], [ %9, %6 ]
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = load i32, i32* @walk_cb_call, align 4
  %14 = call i32 @cxa_thread_walk(i32 %13)
  br label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %2

18:                                               ; preds = %10
  %19 = call i32 @LIST_EMPTY(i32* @dtors)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 (...) @_pthread_self()
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @walk_cb_nocall, align 4
  %27 = call i32 @cxa_thread_walk(i32 %26)
  br label %28

28:                                               ; preds = %21, %18
  ret void
}

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @cxa_thread_walk(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @_pthread_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
