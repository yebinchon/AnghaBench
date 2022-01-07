; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_inferiors.c_add_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_inferiors.c_add_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@all_threads = common dso_local global i32 0, align 4
@current_inferior = common dso_local global %struct.thread_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.thread_info*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = call i64 @malloc(i32 16)
  %7 = inttoptr i64 %6 to %struct.thread_info*
  store %struct.thread_info* %7, %struct.thread_info** %5, align 8
  %8 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %9 = call i32 @memset(%struct.thread_info* %8, i32 0, i32 16)
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %12 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %15 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %14, i32 0, i32 1
  %16 = call i32 @add_inferior_to_list(i32* @all_threads, %struct.TYPE_2__* %15)
  %17 = load %struct.thread_info*, %struct.thread_info** @current_inferior, align 8
  %18 = icmp eq %struct.thread_info* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  store %struct.thread_info* %20, %struct.thread_info** @current_inferior, align 8
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i8*, i8** %4, align 8
  %23 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %24 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %26 = call i32 (...) @new_register_cache()
  %27 = call i32 @set_inferior_regcache_data(%struct.thread_info* %25, i32 %26)
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.thread_info*, i32, i32) #1

declare dso_local i32 @add_inferior_to_list(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @set_inferior_regcache_data(%struct.thread_info*, i32) #1

declare dso_local i32 @new_register_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
