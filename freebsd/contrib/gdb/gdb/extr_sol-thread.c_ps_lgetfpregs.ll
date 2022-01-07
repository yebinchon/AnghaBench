; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_ps_lgetfpregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_ps_lgetfpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32)* }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.cleanup = type { i32 }

@inferior_ptid = common dso_local global i32 0, align 4
@target_has_execution = common dso_local global i64 0, align 8
@procfs_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@orig_core_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps_lgetfpregs(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cleanup*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = call %struct.cleanup* (...) @save_inferior_ptid()
  store %struct.cleanup* %8, %struct.cleanup** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @inferior_ptid, align 4
  %11 = call i32 @PIDGET(i32 %10)
  %12 = call i32 @BUILD_LWP(i32 %9, i32 %11)
  store i32 %12, i32* @inferior_ptid, align 4
  %13 = load i64, i64* @target_has_execution, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @procfs_ops, i32 0, i32 0), align 8
  %17 = call i32 %16(i32 -1)
  br label %21

18:                                               ; preds = %3
  %19 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @orig_core_ops, i32 0, i32 0), align 8
  %20 = call i32 %19(i32 -1)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @fill_fpregset(i32* %22, i32 -1)
  %24 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %25 = call i32 @do_cleanups(%struct.cleanup* %24)
  %26 = load i32, i32* @PS_OK, align 4
  ret i32 %26
}

declare dso_local %struct.cleanup* @save_inferior_ptid(...) #1

declare dso_local i32 @BUILD_LWP(i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @fill_fpregset(i32*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
