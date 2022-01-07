; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/mips/extr_dtrace_isa.c_dtrace_getustackdepth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/mips/extr_dtrace_isa.c_dtrace_getustackdepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.trapframe* }
%struct.trapframe = type { i64, i64, i64 }

@curproc = common dso_local global i32* null, align 8
@cpu_core = common dso_local global %struct.TYPE_4__* null, align 8
@curcpu = common dso_local global i64 0, align 8
@CPU_DTRACE_FAULT = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_getustackdepth() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  %9 = load i32*, i32** @curproc, align 8
  store i32* %9, i32** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_core, align 8
  %11 = load i64, i64* @curcpu, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load volatile i32, i32* %14, align 4
  %16 = load volatile i32, i32* @CPU_DTRACE_FAULT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %50

20:                                               ; preds = %0
  %21 = load i32*, i32** %3, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.trapframe*, %struct.trapframe** %25, align 8
  store %struct.trapframe* %26, %struct.trapframe** %4, align 8
  %27 = icmp eq %struct.trapframe* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %20
  store i32 0, i32* %1, align 4
  br label %50

29:                                               ; preds = %23
  %30 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %31 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %34 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %5, align 8
  %36 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %37 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %29, %45
  %42 = call i64 @dtrace_next_uframe(i64* %7, i64* %5, i64* %6)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %41

48:                                               ; preds = %44
  %49 = load i32, i32* %2, align 4
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %48, %28, %19
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i64 @dtrace_next_uframe(i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
