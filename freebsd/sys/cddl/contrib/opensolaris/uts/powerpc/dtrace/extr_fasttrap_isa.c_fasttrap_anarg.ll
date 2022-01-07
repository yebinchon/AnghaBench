; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/powerpc/dtrace/extr_fasttrap_isa.c_fasttrap_anarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/powerpc/dtrace/extr_fasttrap_isa.c_fasttrap_anarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i64* }

@curproc = common dso_local global i32* null, align 8
@SV_ILP32 = common dso_local global i32 0, align 4
@CPU_DTRACE_NOFAULT = common dso_local global i32 0, align 4
@CPU_DTRACE_BADADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.reg*, i32)* @fasttrap_anarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fasttrap_anarg(%struct.reg* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.reg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.reg* %0, %struct.reg** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** @curproc, align 8
  store i32* %8, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.reg*, %struct.reg** %4, align 8
  %13 = getelementptr inbounds %struct.reg, %struct.reg* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 3
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %3, align 8
  br label %67

20:                                               ; preds = %2
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @SV_ILP32, align 4
  %23 = call i64 @SV_PROC_FLAG(i32* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %27 = call i32 @DTRACE_CPUFLAG_SET(i32 %26)
  %28 = load %struct.reg*, %struct.reg** %4, align 8
  %29 = getelementptr inbounds %struct.reg, %struct.reg* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 8
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = add i64 %33, %37
  %39 = inttoptr i64 %38 to i8*
  %40 = call i64 @dtrace_fuword32(i8* %39)
  store i64 %40, i64* %6, align 8
  %41 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %42 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @DTRACE_CPUFLAG_CLEAR(i32 %43)
  br label %65

45:                                               ; preds = %20
  %46 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %47 = call i32 @DTRACE_CPUFLAG_SET(i32 %46)
  %48 = load %struct.reg*, %struct.reg** %4, align 8
  %49 = getelementptr inbounds %struct.reg, %struct.reg* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 48
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %54, 8
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 8
  %58 = add i64 %53, %57
  %59 = inttoptr i64 %58 to i8*
  %60 = call i64 @dtrace_fuword64(i8* %59)
  store i64 %60, i64* %6, align 8
  %61 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %62 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @DTRACE_CPUFLAG_CLEAR(i32 %63)
  br label %65

65:                                               ; preds = %45, %25
  %66 = load i64, i64* %6, align 8
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %65, %11
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i64 @SV_PROC_FLAG(i32*, i32) #1

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

declare dso_local i64 @dtrace_fuword32(i8*) #1

declare dso_local i32 @DTRACE_CPUFLAG_CLEAR(i32) #1

declare dso_local i64 @dtrace_fuword64(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
