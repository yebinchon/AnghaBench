; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_xfer_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_xfer_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)* }
%struct.mem_attrib = type { i32 }
%struct.target_ops = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)* }
%struct.cleanup = type { i32 }

@inferior_ptid = common dso_local global i32 0, align 4
@target_has_execution = common dso_local global i64 0, align 8
@procfs_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@orig_core_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)* @sol_thread_xfer_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sol_thread_xfer_memory(i32 %0, i8* %1, i32 %2, i32 %3, %struct.mem_attrib* %4, %struct.target_ops* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mem_attrib*, align 8
  %12 = alloca %struct.target_ops*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.cleanup*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mem_attrib* %4, %struct.mem_attrib** %11, align 8
  store %struct.target_ops* %5, %struct.target_ops** %12, align 8
  %15 = call %struct.cleanup* (...) @save_inferior_ptid()
  store %struct.cleanup* %15, %struct.cleanup** %14, align 8
  %16 = load i32, i32* @inferior_ptid, align 4
  %17 = call i64 @is_thread(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* @inferior_ptid, align 4
  %21 = call i32 @target_thread_alive(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %6
  %24 = call i32 (...) @procfs_first_available()
  store i32 %24, i32* @inferior_ptid, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i64, i64* @target_has_execution, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)*, i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @procfs_ops, i32 0, i32 0), align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.mem_attrib*, %struct.mem_attrib** %11, align 8
  %35 = load %struct.target_ops*, %struct.target_ops** %12, align 8
  %36 = call i32 %29(i32 %30, i8* %31, i32 %32, i32 %33, %struct.mem_attrib* %34, %struct.target_ops* %35)
  store i32 %36, i32* %13, align 4
  br label %46

37:                                               ; preds = %25
  %38 = load i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)*, i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @orig_core_ops, i32 0, i32 0), align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.mem_attrib*, %struct.mem_attrib** %11, align 8
  %44 = load %struct.target_ops*, %struct.target_ops** %12, align 8
  %45 = call i32 %38(i32 %39, i8* %40, i32 %41, i32 %42, %struct.mem_attrib* %43, %struct.target_ops* %44)
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %37, %28
  %47 = load %struct.cleanup*, %struct.cleanup** %14, align 8
  %48 = call i32 @do_cleanups(%struct.cleanup* %47)
  %49 = load i32, i32* %13, align 4
  ret i32 %49
}

declare dso_local %struct.cleanup* @save_inferior_ptid(...) #1

declare dso_local i64 @is_thread(i32) #1

declare dso_local i32 @target_thread_alive(i32) #1

declare dso_local i32 @procfs_first_available(...) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
