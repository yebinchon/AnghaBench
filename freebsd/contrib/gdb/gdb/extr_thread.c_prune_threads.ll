; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_prune_threads.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_prune_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32, %struct.thread_info* }

@thread_list = common dso_local global %struct.thread_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prune_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_threads() #0 {
  %1 = alloca %struct.thread_info*, align 8
  %2 = alloca %struct.thread_info*, align 8
  %3 = load %struct.thread_info*, %struct.thread_info** @thread_list, align 8
  store %struct.thread_info* %3, %struct.thread_info** %1, align 8
  br label %4

4:                                                ; preds = %20, %0
  %5 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %6 = icmp ne %struct.thread_info* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %9 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %8, i32 0, i32 1
  %10 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  store %struct.thread_info* %10, %struct.thread_info** %2, align 8
  %11 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %12 = call i32 @thread_alive(%struct.thread_info* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %7
  %15 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %16 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @delete_thread(i32 %17)
  br label %19

19:                                               ; preds = %14, %7
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.thread_info*, %struct.thread_info** %2, align 8
  store %struct.thread_info* %21, %struct.thread_info** %1, align 8
  br label %4

22:                                               ; preds = %4
  ret void
}

declare dso_local i32 @thread_alive(%struct.thread_info*) #1

declare dso_local i32 @delete_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
