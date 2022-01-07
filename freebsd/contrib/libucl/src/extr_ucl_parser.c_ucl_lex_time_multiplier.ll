; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_lex_time_multiplier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_lex_time_multiplier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8, double }

@__const.ucl_lex_time_multiplier.multipliers = private unnamed_addr constant [5 x %struct.anon] [%struct.anon { i8 109, double 6.000000e+01 }, %struct.anon { i8 104, double 3.600000e+03 }, %struct.anon { i8 100, double 8.640000e+04 }, %struct.anon { i8 119, double 6.048000e+05 }, %struct.anon { i8 121, double 3.153600e+07 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8)* @ucl_lex_time_multiplier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @ucl_lex_time_multiplier(i8 zeroext %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i8, align 1
  %4 = alloca [5 x %struct.anon], align 16
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  %6 = bitcast [5 x %struct.anon]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @__const.ucl_lex_time_multiplier.multipliers, i32 0, i32 0, i32 0), i64 80, i1 false)
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 5
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load i8, i8* %3, align 1
  %12 = call signext i8 @tolower(i8 signext %11)
  %13 = sext i8 %12 to i32
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %4, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 16
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %13, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %10
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %4, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 1
  %26 = load double, double* %25, align 8
  store double %26, double* %2, align 8
  br label %32

27:                                               ; preds = %10
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %7

31:                                               ; preds = %7
  store double 1.000000e+00, double* %2, align 8
  br label %32

32:                                               ; preds = %31, %21
  %33 = load double, double* %2, align 8
  ret double %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local signext i8 @tolower(i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
