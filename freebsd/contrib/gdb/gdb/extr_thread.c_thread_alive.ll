; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_thread_alive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_thread_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread_info*)* @thread_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_alive(%struct.thread_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread_info*, align 8
  store %struct.thread_info* %0, %struct.thread_info** %3, align 8
  %4 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %5 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @PIDGET(i32 %6)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

10:                                               ; preds = %1
  %11 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %12 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @target_thread_alive(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = call i32 @pid_to_ptid(i32 -1)
  %18 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %19 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  store i32 0, i32* %2, align 4
  br label %21

20:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %16, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @target_thread_alive(i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
