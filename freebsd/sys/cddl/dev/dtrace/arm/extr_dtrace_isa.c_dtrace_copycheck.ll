; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/arm/extr_dtrace_isa.c_dtrace_copycheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/arm/extr_dtrace_isa.c_dtrace_copycheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@CPU_DTRACE_BADADDR = common dso_local global i32 0, align 4
@cpu_core = common dso_local global %struct.TYPE_2__* null, align 8
@curcpu = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @dtrace_copycheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_copycheck(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %7, align 8
  %10 = add i64 %8, %9
  %11 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = add i64 %14, %15
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %21 = call i32 @DTRACE_CPUFLAG_SET(i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_core, align 8
  %24 = load i64, i64* @curcpu, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %22, i64* %26, align 8
  store i32 0, i32* %4, align 4
  br label %28

27:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
