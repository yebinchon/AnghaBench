; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_milenage.c_gsm_milenage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_milenage.c_gsm_milenage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gsm_milenage(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [8 x i32], align 16
  %13 = alloca [16 x i32], align 16
  %14 = alloca [16 x i32], align 16
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %22 = call i64 @milenage_f2345(i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* null, i32* null)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %81

25:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %55, %25
  %27 = load i32, i32* %15, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %58

29:                                               ; preds = %26
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %15, align 4
  %35 = add nsw i32 %34, 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %33, %38
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %39, %43
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %44, %49
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %29
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %26

58:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %77, %58
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = xor i32 %66, %71
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %59

80:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %80, %24
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i64 @milenage_f2345(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
