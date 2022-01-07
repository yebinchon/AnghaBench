; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_lwp_fetch_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_lwp_fetch_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@target_has_execution = common dso_local global i32 0, align 4
@orig_core_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@PT_GETREGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Cannot get lwp %d registers: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@PT_GETFPREGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot get lwp %d registers: %s\0A \00", align 1
@PT_GETXMMREGS = common dso_local global i32 0, align 4
@current_regcache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fbsd_lwp_fetch_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbsd_lwp_fetch_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @target_has_execution, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @orig_core_ops, i32 0, i32 0), align 8
  %10 = call i32 %9(i32 -1)
  br label %38

11:                                               ; preds = %1
  %12 = load i32, i32* @inferior_ptid, align 4
  %13 = call i32 @GET_PID(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @PT_GETREGS, align 4
  %15 = load i32, i32* %5, align 4
  %16 = bitcast i32* %3 to i8*
  %17 = call i32 @ptrace(i32 %14, i32 %15, i8* %16, i32 0)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @errno, align 4
  %22 = call i8* @safe_strerror(i32 %21)
  %23 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %22)
  br label %24

24:                                               ; preds = %19, %11
  %25 = call i32 @supply_gregset(i32* %3)
  %26 = load i32, i32* @PT_GETFPREGS, align 4
  %27 = load i32, i32* %5, align 4
  %28 = bitcast i32* %4 to i8*
  %29 = call i32 @ptrace(i32 %26, i32 %27, i8* %28, i32 0)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = call i8* @safe_strerror(i32 %33)
  %35 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8* %34)
  br label %36

36:                                               ; preds = %31, %24
  %37 = call i32 @supply_fpregset(i32* %4)
  br label %38

38:                                               ; preds = %36, %8
  ret void
}

declare dso_local i32 @GET_PID(i32) #1

declare dso_local i32 @ptrace(i32, i32, i8*, i32) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i8* @safe_strerror(i32) #1

declare dso_local i32 @supply_gregset(i32*) #1

declare dso_local i32 @supply_fpregset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
