; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-llm.h_cvmx_llm_ecc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-llm.h_cvmx_llm_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cvmx_llm_ecc.ecc_code_29 = internal constant [7 x i32] [i32 144057749, i32 287984298, i32 38572879, i32 74521715, i32 125952124, i32 402784128, i32 536739840], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cvmx_llm_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_llm_ecc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @cvmx_llm_ecc.ecc_code_29, i64 0, i64 0), align 16
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @cvmx_llm_ecc.ecc_code_29, i64 0, i64 1), align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @cvmx_llm_ecc.ecc_code_29, i64 0, i64 2), align 8
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @cvmx_llm_ecc.ecc_code_29, i64 0, i64 3), align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @CVMX_DPOP(i32 %17, i32 %18)
  %20 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @cvmx_llm_ecc.ecc_code_29, i64 0, i64 4), align 16
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @CVMX_DPOP(i32 %24, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @cvmx_llm_ecc.ecc_code_29, i64 0, i64 5), align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @CVMX_DPOP(i32 %31, i32 %32)
  %34 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @cvmx_llm_ecc.ecc_code_29, i64 0, i64 6), align 8
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @CVMX_DPOP(i32 %38, i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @CVMX_DPOP(i32 %44, i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @CVMX_DPOP(i32 %50, i32 %51)
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @CVMX_DPOP(i32 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 1
  %61 = shl i32 %60, 6
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 1
  %64 = shl i32 %63, 5
  %65 = or i32 %61, %64
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 1
  %68 = shl i32 %67, 4
  %69 = or i32 %65, %68
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 1
  %72 = shl i32 %71, 3
  %73 = or i32 %69, %72
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, 1
  %76 = shl i32 %75, 2
  %77 = or i32 %73, %76
  %78 = load i32, i32* %4, align 4
  %79 = and i32 %78, 1
  %80 = shl i32 %79, 1
  %81 = or i32 %77, %80
  %82 = load i32, i32* %3, align 4
  %83 = and i32 %82, 1
  %84 = or i32 %81, %83
  ret i32 %84
}

declare dso_local i32 @CVMX_DPOP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
