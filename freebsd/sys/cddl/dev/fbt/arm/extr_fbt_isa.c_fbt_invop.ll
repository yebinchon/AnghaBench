; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/arm/extr_fbt_isa.c_fbt_invop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/arm/extr_fbt_isa.c_fbt_invop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, %struct.TYPE_6__* }
%struct.trapframe = type { i32, i32, i32, i32, i64 }

@solaris_cpu = common dso_local global %struct.TYPE_5__* null, align 8
@curcpu = common dso_local global i64 0, align 8
@fbt_probetab = common dso_local global %struct.TYPE_6__** null, align 8
@CPU_DTRACE_NOFAULT = common dso_local global i32 0, align 4
@CPU_DTRACE_BADADDR = common dso_local global i32 0, align 4
@DTRACE_INVOP_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbt_invop(i64 %0, %struct.trapframe* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.trapframe*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.trapframe* %1, %struct.trapframe** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @solaris_cpu, align 8
  %12 = load i64, i64* @curcpu, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 %12
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %8, align 8
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fbt_probetab, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @FBT_ADDR2NDX(i64 %15)
  %17 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %14, i64 %16
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %9, align 8
  br label %19

19:                                               ; preds = %72, %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %76

22:                                               ; preds = %19
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %22
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %33 = call i32 @DTRACE_CPUFLAG_SET(i32 %32)
  %34 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %35 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %40 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @DTRACE_CPUFLAG_CLEAR(i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %47 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %50 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %53 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %56 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @dtrace_probe(i32 %45, i32 %48, i32 %51, i32 %54, i32 %57, i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @DTRACE_INVOP_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = or i32 %64, %69
  store i32 %70, i32* %4, align 4
  br label %77

71:                                               ; preds = %22
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %9, align 8
  br label %19

76:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %28
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @FBT_ADDR2NDX(i64) #1

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

declare dso_local i32 @DTRACE_CPUFLAG_CLEAR(i32) #1

declare dso_local i32 @dtrace_probe(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
