; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_test_helper.c_tohex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_test_helper.c_tohex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @tohex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tohex(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %12 = load i64, i64* %4, align 8
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 1
  %15 = call i8* @malloc(i64 %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %52, %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 4
  %31 = and i32 %30, 15
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %25, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 %34, i8* %38, align 1
  %39 = load i8*, i8** %8, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 15
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %39, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %9, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %7, align 8
  %51 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 %47, i8* %51, align 1
  br label %52

52:                                               ; preds = %24
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %20

55:                                               ; preds = %20
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %9, align 8
  ret i8* %59
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
