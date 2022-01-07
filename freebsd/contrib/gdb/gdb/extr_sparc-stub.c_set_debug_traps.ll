; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-stub.c_set_debug_traps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-stub.c_set_debug_traps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hard_trap_info = type { i64, i64 }

@hard_trap_info = common dso_local global %struct.hard_trap_info* null, align 8
@trap_low = common dso_local global i32 0, align 4
@initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_debug_traps() #0 {
  %1 = alloca %struct.hard_trap_info*, align 8
  %2 = load %struct.hard_trap_info*, %struct.hard_trap_info** @hard_trap_info, align 8
  store %struct.hard_trap_info* %2, %struct.hard_trap_info** %1, align 8
  br label %3

3:                                                ; preds = %21, %0
  %4 = load %struct.hard_trap_info*, %struct.hard_trap_info** %1, align 8
  %5 = getelementptr inbounds %struct.hard_trap_info, %struct.hard_trap_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load %struct.hard_trap_info*, %struct.hard_trap_info** %1, align 8
  %10 = getelementptr inbounds %struct.hard_trap_info, %struct.hard_trap_info* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i1 [ false, %3 ], [ %12, %8 ]
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  %16 = load %struct.hard_trap_info*, %struct.hard_trap_info** %1, align 8
  %17 = getelementptr inbounds %struct.hard_trap_info, %struct.hard_trap_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @trap_low, align 4
  %20 = call i32 @exceptionHandler(i64 %18, i32 %19)
  br label %21

21:                                               ; preds = %15
  %22 = load %struct.hard_trap_info*, %struct.hard_trap_info** %1, align 8
  %23 = getelementptr inbounds %struct.hard_trap_info, %struct.hard_trap_info* %22, i32 1
  store %struct.hard_trap_info* %23, %struct.hard_trap_info** %1, align 8
  br label %3

24:                                               ; preds = %13
  store i32 1, i32* @initialized, align 4
  ret void
}

declare dso_local i32 @exceptionHandler(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
