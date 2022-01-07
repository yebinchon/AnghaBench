; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdtoa/extr_arithchk.c_ccheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdtoa/extr_arithchk.c_ccheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

@emptyfmt = common dso_local global i8* null, align 8
@CRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @ccheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ccheck() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %union.anon, align 8
  %3 = alloca i64, align 8
  %4 = load i8*, i8** @emptyfmt, align 8
  %5 = call i64 (i8*, ...) @printf(i8* %4)
  %6 = icmp slt i64 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i32 0, i32 4617762
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  %10 = load i8*, i8** @emptyfmt, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 (i8*, ...) @printf(i8* %10, i64 %11)
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %0
  %15 = load i64, i64* %3, align 8
  %16 = mul nsw i64 1000000, %15
  %17 = add nsw i64 %16, 693716
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %14, %0
  %19 = load i8*, i8** @emptyfmt, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i64 (i8*, ...) @printf(i8* %19, i64 %20)
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i64, i64* %3, align 8
  %25 = mul nsw i64 1000000, %24
  %26 = add nsw i64 %25, 115456
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %23, %18
  %28 = bitcast %union.anon* %2 to double*
  store double 1.000000e+13, double* %28, align 8
  %29 = bitcast %union.anon* %2 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32* @CRAY, i32** %1, align 8
  br label %35

34:                                               ; preds = %27
  store i32* null, i32** %1, align 8
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32*, i32** %1, align 8
  ret i32* %36
}

declare dso_local i64 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
