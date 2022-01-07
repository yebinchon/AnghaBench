; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_copyinstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_copyinstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@CPU_DTRACE_BADADDR = common dso_local global i32 0, align 4
@cpu_core = common dso_local global %struct.TYPE_2__* null, align 8
@curcpu = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_copyinstr(i64 %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @dtrace_copycheck(i64 %11, i64 %12, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %4
  %17 = load i64, i64* %5, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load i64, i64* %6, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @copyinstr(i8* %18, i8* %20, i64 %21, i64* %9)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @ENAMETOOLONG, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %31 = call i32 @DTRACE_CPUFLAG_SET(i32 %30)
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_core, align 8
  %34 = load i64, i64* @curcpu, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 %32, i64* %36, align 8
  br label %37

37:                                               ; preds = %29, %25, %16
  br label %38

38:                                               ; preds = %37, %4
  ret void
}

declare dso_local i64 @dtrace_copycheck(i64, i64, i64) #1

declare dso_local i32 @copyinstr(i8*, i8*, i64, i64*) #1

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
