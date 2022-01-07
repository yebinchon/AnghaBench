; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_fuword64.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_fuword64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@CPU_DTRACE_BADADDR = common dso_local global i32 0, align 4
@cpu_core = common dso_local global %struct.TYPE_2__* null, align 8
@curcpu = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dtrace_fuword64(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = ptrtoint i8* %4 to i64
  %6 = ptrtoint i64* %3 to i64
  %7 = call i64 @dtrace_copycheck(i64 %5, i64 %6, i32 8)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i64* %3 to i8*
  %12 = call i64 @copyin(i8* %10, i8* %11, i32 8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %16 = call i32 @DTRACE_CPUFLAG_SET(i32 %15)
  %17 = load i8*, i8** %2, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_core, align 8
  %20 = load i64, i64* @curcpu, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 %18, i64* %22, align 8
  br label %23

23:                                               ; preds = %14, %9
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

declare dso_local i64 @dtrace_copycheck(i64, i64, i32) #1

declare dso_local i64 @copyin(i8*, i8*, i32) #1

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
