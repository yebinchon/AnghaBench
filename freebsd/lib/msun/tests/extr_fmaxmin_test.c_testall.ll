; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fmaxmin_test.c_testall.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fmaxmin_test.c_testall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@testall.rmodes = internal constant [4 x i32] [i32 130, i32 128, i32 131, i32 129], align 16
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"FAILURE in rounding mode %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%sok %d - big = %.20Lg, small = %.20Lg%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@comment = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, x86_fp80, x86_fp80)* @testall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testall(i32 %0, x86_fp80 %1, x86_fp80 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store x86_fp80 %1, x86_fp80* %5, align 16
  store x86_fp80 %2, x86_fp80* %6, align 16
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %29, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* @testall.rmodes, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @fesetround(i32 %15)
  %17 = load x86_fp80, x86_fp80* %5, align 16
  %18 = load x86_fp80, x86_fp80* %6, align 16
  %19 = call i32 @testall_r(x86_fp80 %17, x86_fp80 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %11
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* @testall.rmodes, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %32

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %8

32:                                               ; preds = %21, %8
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 4
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %37 = load i32, i32* %4, align 4
  %38 = load x86_fp80, x86_fp80* %5, align 16
  %39 = load x86_fp80, x86_fp80* %6, align 16
  %40 = load i8*, i8** @comment, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %45

43:                                               ; preds = %32
  %44 = load i8*, i8** @comment, align 8
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %42 ], [ %44, %43 ]
  %47 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %37, x86_fp80 %38, x86_fp80 %39, i8* %46)
  ret void
}

declare dso_local i32 @fesetround(i32) #1

declare dso_local i32 @testall_r(x86_fp80, x86_fp80) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, x86_fp80, x86_fp80, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
