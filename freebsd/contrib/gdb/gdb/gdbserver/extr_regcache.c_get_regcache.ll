; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_regcache.c_get_regcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_regcache.c_get_regcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inferior_regcache_data = type { i32 }
%struct.thread_info = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no register cache\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inferior_regcache_data* (%struct.thread_info*, i32)* @get_regcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inferior_regcache_data* @get_regcache(%struct.thread_info* %0, i32 %1) #0 {
  %3 = alloca %struct.thread_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inferior_regcache_data*, align 8
  store %struct.thread_info* %0, %struct.thread_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %7 = call i64 @inferior_regcache_data(%struct.thread_info* %6)
  %8 = inttoptr i64 %7 to %struct.inferior_regcache_data*
  store %struct.inferior_regcache_data* %8, %struct.inferior_regcache_data** %5, align 8
  %9 = load %struct.inferior_regcache_data*, %struct.inferior_regcache_data** %5, align 8
  %10 = icmp eq %struct.inferior_regcache_data* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load %struct.inferior_regcache_data*, %struct.inferior_regcache_data** %5, align 8
  %18 = getelementptr inbounds %struct.inferior_regcache_data, %struct.inferior_regcache_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = call i32 @fetch_inferior_registers(i32 0)
  %23 = load %struct.inferior_regcache_data*, %struct.inferior_regcache_data** %5, align 8
  %24 = getelementptr inbounds %struct.inferior_regcache_data, %struct.inferior_regcache_data* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %16, %13
  %26 = load %struct.inferior_regcache_data*, %struct.inferior_regcache_data** %5, align 8
  ret %struct.inferior_regcache_data* %26
}

declare dso_local i64 @inferior_regcache_data(%struct.thread_info*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @fetch_inferior_registers(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
