; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/mips/extr_fbt_isa.c_fbt_invop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/mips/extr_fbt_isa.c_fbt_invop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_6__* }
%struct.trapframe = type { i32, i32, i32, i32, i32 }

@solaris_cpu = common dso_local global %struct.TYPE_5__* null, align 8
@curcpu = common dso_local global i64 0, align 8
@fbt_probetab = common dso_local global %struct.TYPE_6__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbt_invop(i64 %0, %struct.trapframe* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.trapframe*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.trapframe* %1, %struct.trapframe** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @solaris_cpu, align 8
  %11 = load i64, i64* @curcpu, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 %11
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fbt_probetab, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @FBT_ADDR2NDX(i64 %14)
  %16 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %13, i64 %15
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %9, align 8
  br label %18

18:                                               ; preds = %56, %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %60

21:                                               ; preds = %18
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %35 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %38 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %41 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %44 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %47 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dtrace_probe(i32 %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %4, align 4
  br label %61

55:                                               ; preds = %21
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %9, align 8
  br label %18

60:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %27
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @FBT_ADDR2NDX(i64) #1

declare dso_local i32 @dtrace_probe(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
