; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_regcache.c_regcache_invalidate_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_regcache.c_regcache_invalidate_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32 }
%struct.inferior_list_entry = type { i32 }
%struct.inferior_regcache_data = type { i64 }

@current_inferior = common dso_local global %struct.thread_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regcache_invalidate_one(%struct.inferior_list_entry* %0) #0 {
  %2 = alloca %struct.inferior_list_entry*, align 8
  %3 = alloca %struct.thread_info*, align 8
  %4 = alloca %struct.inferior_regcache_data*, align 8
  %5 = alloca %struct.thread_info*, align 8
  store %struct.inferior_list_entry* %0, %struct.inferior_list_entry** %2, align 8
  %6 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %2, align 8
  %7 = bitcast %struct.inferior_list_entry* %6 to %struct.thread_info*
  store %struct.thread_info* %7, %struct.thread_info** %3, align 8
  %8 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %9 = call i64 @inferior_regcache_data(%struct.thread_info* %8)
  %10 = inttoptr i64 %9 to %struct.inferior_regcache_data*
  store %struct.inferior_regcache_data* %10, %struct.inferior_regcache_data** %4, align 8
  %11 = load %struct.inferior_regcache_data*, %struct.inferior_regcache_data** %4, align 8
  %12 = getelementptr inbounds %struct.inferior_regcache_data, %struct.inferior_regcache_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.thread_info*, %struct.thread_info** @current_inferior, align 8
  store %struct.thread_info* %16, %struct.thread_info** %5, align 8
  %17 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  store %struct.thread_info* %17, %struct.thread_info** @current_inferior, align 8
  %18 = call i32 @store_inferior_registers(i32 -1)
  %19 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  store %struct.thread_info* %19, %struct.thread_info** @current_inferior, align 8
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.inferior_regcache_data*, %struct.inferior_regcache_data** %4, align 8
  %22 = getelementptr inbounds %struct.inferior_regcache_data, %struct.inferior_regcache_data* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  ret void
}

declare dso_local i64 @inferior_regcache_data(%struct.thread_info*) #1

declare dso_local i32 @store_inferior_registers(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
