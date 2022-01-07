; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fma.c_add_adjusted.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fma.c_add_adjusted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dd = type { i64, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double)* @add_adjusted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @add_adjusted(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.dd, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dd, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %9 = load double, double* %3, align 8
  %10 = load double, double* %4, align 8
  %11 = call { i64, double } @dd_add(double %9, double %10)
  %12 = bitcast %struct.dd* %8 to { i64, double }*
  %13 = getelementptr inbounds { i64, double }, { i64, double }* %12, i32 0, i32 0
  %14 = extractvalue { i64, double } %11, 0
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds { i64, double }, { i64, double }* %12, i32 0, i32 1
  %16 = extractvalue { i64, double } %11, 1
  store double %16, double* %15, align 8
  %17 = bitcast %struct.dd* %5 to i8*
  %18 = bitcast %struct.dd* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = getelementptr inbounds %struct.dd, %struct.dd* %5, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds %struct.dd, %struct.dd* %5, i32 0, i32 1
  %25 = load double, double* %24, align 8
  %26 = call i32 @EXTRACT_WORD64(i32 %23, double %25)
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = getelementptr inbounds %struct.dd, %struct.dd* %5, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sitofp i64 %33 to double
  %35 = call i32 @EXTRACT_WORD64(i32 %31, double %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = xor i32 %36, %37
  %39 = ashr i32 %38, 62
  %40 = sub nsw i32 1, %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = getelementptr inbounds %struct.dd, %struct.dd* %5, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @INSERT_WORD64(double %44, i32 %45)
  br label %47

47:                                               ; preds = %30, %22
  br label %48

48:                                               ; preds = %47, %2
  %49 = getelementptr inbounds %struct.dd, %struct.dd* %5, i32 0, i32 1
  %50 = load double, double* %49, align 8
  ret double %50
}

declare dso_local { i64, double } @dd_add(double, double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @EXTRACT_WORD64(i32, double) #1

declare dso_local i32 @INSERT_WORD64(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
