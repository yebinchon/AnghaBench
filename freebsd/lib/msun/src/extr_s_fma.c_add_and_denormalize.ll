; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fma.c_add_and_denormalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fma.c_add_and_denormalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dd = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, i32)* @add_and_denormalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @add_and_denormalize(double %0, double %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dd, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dd, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load double, double* %4, align 8
  %13 = load double, double* %5, align 8
  %14 = call { i64, i64 } @dd_add(double %12, double %13)
  %15 = bitcast %struct.dd* %11 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  %17 = extractvalue { i64, i64 } %14, 0
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  %19 = extractvalue { i64, i64 } %14, 1
  store i64 %19, i64* %18, align 8
  %20 = bitcast %struct.dd* %7 to i8*
  %21 = bitcast %struct.dd* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = getelementptr inbounds %struct.dd, %struct.dd* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds %struct.dd, %struct.dd* %7, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @EXTRACT_WORD64(i32 %26, i64 %28)
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 52
  %32 = and i32 %31, 2047
  %33 = sub nsw i32 0, %32
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %33, %34
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 1
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 1
  %42 = xor i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %25
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds %struct.dd, %struct.dd* %7, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @EXTRACT_WORD64(i32 %45, i64 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = xor i32 %49, %50
  %52 = ashr i32 %51, 62
  %53 = and i32 %52, 2
  %54 = sub nsw i32 1, %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = getelementptr inbounds %struct.dd, %struct.dd* %7, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @INSERT_WORD64(i64 %58, i32 %59)
  br label %61

61:                                               ; preds = %44, %25
  br label %62

62:                                               ; preds = %61, %3
  %63 = getelementptr inbounds %struct.dd, %struct.dd* %7, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call double @ldexp(i64 %64, i32 %65)
  ret double %66
}

declare dso_local { i64, i64 } @dd_add(double, double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @EXTRACT_WORD64(i32, i64) #1

declare dso_local i32 @INSERT_WORD64(i64, i32) #1

declare dso_local double @ldexp(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
