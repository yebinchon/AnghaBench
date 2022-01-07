; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.target_ops = type { i32 }

@procfs_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@auto_solib_add = common dso_local global i32 0, align 4
@sol_thread_active = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"sol-thread active.\0A\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@main_ph = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@sol_thread_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sol_thread_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sol_thread_attach(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @procfs_ops, i32 0, i32 0), align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 %5(i8* %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @auto_solib_add, align 4
  %11 = call i32 @SOLIB_ADD(i8* null, i32 %9, %struct.target_ops* null, i32 %10)
  %12 = load i64, i64* @sol_thread_active, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = call i32 @printf_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @inferior_ptid, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_ph, i32 0, i32 0), align 4
  %17 = call i32 @push_target(i32* @sol_thread_ops)
  %18 = load i32, i32* @inferior_ptid, align 4
  %19 = call i32 @lwp_to_thread(i32 %18)
  store i32 %19, i32* @inferior_ptid, align 4
  %20 = load i32, i32* @inferior_ptid, align 4
  %21 = call i32 @PIDGET(i32 %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_ph, i32 0, i32 0), align 4
  store i32 %24, i32* @inferior_ptid, align 4
  br label %28

25:                                               ; preds = %14
  %26 = load i32, i32* @inferior_ptid, align 4
  %27 = call i32 @add_thread(i32 %26)
  br label %28

28:                                               ; preds = %25, %23
  br label %29

29:                                               ; preds = %28, %2
  ret void
}

declare dso_local i32 @SOLIB_ADD(i8*, i32, %struct.target_ops*, i32) #1

declare dso_local i32 @printf_filtered(i8*) #1

declare dso_local i32 @push_target(i32*) #1

declare dso_local i32 @lwp_to_thread(i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @add_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
