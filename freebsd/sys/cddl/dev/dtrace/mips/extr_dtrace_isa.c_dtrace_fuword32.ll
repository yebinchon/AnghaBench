; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/mips/extr_dtrace_isa.c_dtrace_fuword32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/mips/extr_dtrace_isa.c_dtrace_fuword32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@CPU_DTRACE_BADADDR = common dso_local global i32 0, align 4
@cpu_core = common dso_local global %struct.TYPE_2__* null, align 8
@curcpu = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_fuword32(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = ptrtoint i8* %4 to i64
  %6 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %10 = call i32 @DTRACE_CPUFLAG_SET(i32 %9)
  %11 = load i8*, i8** %3, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_core, align 8
  %14 = load i64, i64* @curcpu, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i64 %12, i64* %16, align 8
  store i32 0, i32* %2, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @dtrace_fuword32_nocheck(i8* %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %8
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

declare dso_local i32 @dtrace_fuword32_nocheck(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
