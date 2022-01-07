; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_ms_funcs.c_generate_nt_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_ms_funcs.c_generate_nt_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generate_nt_response(i32* %0, i32* %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [8 x i32], align 16
  %17 = alloca [16 x i32], align 16
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %23 = call i64 @challenge_hash(i32* %18, i32* %19, i32* %20, i64 %21, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %7
  %26 = load i32*, i32** %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %29 = call i64 @nt_password_hash(i32* %26, i64 %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %34 = load i32*, i32** %15, align 8
  %35 = call i64 @challenge_response(i32* %32, i32* %33, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %25, %7
  store i32 -1, i32* %8, align 4
  br label %39

38:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local i64 @challenge_hash(i32*, i32*, i32*, i64, i32*) #1

declare dso_local i64 @nt_password_hash(i32*, i64, i32*) #1

declare dso_local i64 @challenge_response(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
