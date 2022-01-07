; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_subr.c_dtrace_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_subr.c_dtrace_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.trapframe = type { i32, i32, i32 }

@cpu_core = common dso_local global %struct.TYPE_2__* null, align 8
@curcpu = common dso_local global i64 0, align 8
@CPU_DTRACE_NOFAULT = common dso_local global i32 0, align 4
@PSL_EE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"interrupts enabled\00", align 1
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
  br i1 %17, label %18, label %72

18:                                               ; preds = %2
  %19 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %20 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PSL_EE, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %70 [
    i32 130, label %28
    i32 131, label %28
    i32 128, label %49
    i32 129, label %49
  ]

28:                                               ; preds = %18, %18
  %29 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_core, align 8
  %31 = load i64, i64* @curcpu, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %29
  store i32 %35, i32* %33, align 4
  %36 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %37 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_core, align 8
  %40 = load i64, i64* @curcpu, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %44 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 4
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  store i32 1, i32* %3, align 4
  br label %73

49:                                               ; preds = %18, %18
  %50 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_core, align 8
  %52 = load i64, i64* @curcpu, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %50
  store i32 %56, i32* %54, align 4
  %57 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %58 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_core, align 8
  %61 = load i64, i64* @curcpu, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 4
  %64 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %65 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, 4
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  store i32 1, i32* %3, align 4
  br label %73

70:                                               ; preds = %18
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %2
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %49, %28
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32 @sched_unpin(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
