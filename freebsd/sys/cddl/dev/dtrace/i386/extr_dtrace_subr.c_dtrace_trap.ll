; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/i386/extr_dtrace_subr.c_dtrace_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/i386/extr_dtrace_subr.c_dtrace_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.trapframe = type { i64 }

@cpu_core = common dso_local global %struct.TYPE_2__* null, align 8
@curcpu = common dso_local global i64 0, align 8
@CPU_DTRACE_NOFAULT = common dso_local global i32 0, align 4
@PSL_I = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"interrupts enabled\00", align 1
@CPU_DTRACE_ILLOP = common dso_local global i32 0, align 4
@CPU_DTRACE_BADADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_trap(%struct.trapframe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @sched_pin()
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_core, align 8
  %9 = load i64, i64* @curcpu, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = call i32 (...) @sched_unpin()
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %2
  %19 = call i32 (...) @read_eflags()
  %20 = load i32, i32* @PSL_I, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %65 [
    i32 128, label %26
    i32 129, label %43
  ]

26:                                               ; preds = %18
  %27 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_core, align 8
  %29 = load i64, i64* @curcpu, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 4
  %34 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %35 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = call i64 @dtrace_instr_size(i32* %37)
  %39 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %40 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  store i32 1, i32* %3, align 4
  br label %68

43:                                               ; preds = %18
  %44 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_core, align 8
  %46 = load i64, i64* @curcpu, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 4
  %51 = call i32 (...) @rcr2()
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_core, align 8
  %53 = load i64, i64* @curcpu, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  %56 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %57 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = call i64 @dtrace_instr_size(i32* %59)
  %61 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %62 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  store i32 1, i32* %3, align 4
  br label %68

65:                                               ; preds = %18
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66, %2
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %43, %26
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32 @sched_unpin(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @read_eflags(...) #1

declare dso_local i64 @dtrace_instr_size(i32*) #1

declare dso_local i32 @rcr2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
