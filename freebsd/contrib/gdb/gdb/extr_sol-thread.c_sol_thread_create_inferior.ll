; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_create_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_create_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*, i8*, i8**)* }
%struct.TYPE_4__ = type { i32 }

@procfs_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@sol_thread_active = common dso_local global i64 0, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@null_ptid = common dso_local global i32 0, align 4
@main_ph = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@sol_thread_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**)* @sol_thread_create_inferior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sol_thread_create_inferior(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %7 = load i32 (i8*, i8*, i8**)*, i32 (i8*, i8*, i8**)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @procfs_ops, i32 0, i32 0), align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = call i32 %7(i8* %8, i8* %9, i8** %10)
  %12 = load i64, i64* @sol_thread_active, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = load i32, i32* @inferior_ptid, align 4
  %16 = load i32, i32* @null_ptid, align 4
  %17 = call i32 @ptid_equal(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @inferior_ptid, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_ph, i32 0, i32 0), align 4
  %21 = call i32 @push_target(i32* @sol_thread_ops)
  %22 = load i32, i32* @inferior_ptid, align 4
  %23 = call i32 @lwp_to_thread(i32 %22)
  store i32 %23, i32* @inferior_ptid, align 4
  %24 = load i32, i32* @inferior_ptid, align 4
  %25 = call i32 @PIDGET(i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_ph, i32 0, i32 0), align 4
  store i32 %28, i32* @inferior_ptid, align 4
  br label %29

29:                                               ; preds = %27, %19
  %30 = load i32, i32* @inferior_ptid, align 4
  %31 = call i32 @in_thread_list(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @inferior_ptid, align 4
  %35 = call i32 @add_thread(i32 %34)
  br label %36

36:                                               ; preds = %33, %29
  br label %37

37:                                               ; preds = %36, %14, %3
  ret void
}

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i32 @push_target(i32*) #1

declare dso_local i32 @lwp_to_thread(i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @in_thread_list(i32) #1

declare dso_local i32 @add_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
