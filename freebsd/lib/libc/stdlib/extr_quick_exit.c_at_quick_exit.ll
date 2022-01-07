; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_quick_exit.c_at_quick_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_quick_exit.c_at_quick_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quick_exit_handler = type { void (...)*, %struct.quick_exit_handler* }

@atexit_mutex = common dso_local global i32 0, align 4
@handlers = common dso_local global %struct.quick_exit_handler* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @at_quick_exit(void ()* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca void ()*, align 8
  %4 = alloca %struct.quick_exit_handler*, align 8
  store void ()* %0, void ()** %3, align 8
  %5 = call %struct.quick_exit_handler* @malloc(i32 16)
  store %struct.quick_exit_handler* %5, %struct.quick_exit_handler** %4, align 8
  %6 = load %struct.quick_exit_handler*, %struct.quick_exit_handler** %4, align 8
  %7 = icmp eq %struct.quick_exit_handler* null, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load void ()*, void ()** %3, align 8
  %11 = bitcast void ()* %10 to void (...)*
  %12 = load %struct.quick_exit_handler*, %struct.quick_exit_handler** %4, align 8
  %13 = getelementptr inbounds %struct.quick_exit_handler, %struct.quick_exit_handler* %12, i32 0, i32 0
  store void (...)* %11, void (...)** %13, align 8
  %14 = call i32 @pthread_mutex_lock(i32* @atexit_mutex)
  %15 = load %struct.quick_exit_handler*, %struct.quick_exit_handler** @handlers, align 8
  %16 = load %struct.quick_exit_handler*, %struct.quick_exit_handler** %4, align 8
  %17 = getelementptr inbounds %struct.quick_exit_handler, %struct.quick_exit_handler* %16, i32 0, i32 1
  store %struct.quick_exit_handler* %15, %struct.quick_exit_handler** %17, align 8
  %18 = call i32 (...) @__compiler_membar()
  %19 = load %struct.quick_exit_handler*, %struct.quick_exit_handler** %4, align 8
  store %struct.quick_exit_handler* %19, %struct.quick_exit_handler** @handlers, align 8
  %20 = call i32 @pthread_mutex_unlock(i32* @atexit_mutex)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %9, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.quick_exit_handler* @malloc(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @__compiler_membar(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
