; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_lib.c_bn_cmp_words.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_lib.c_bn_cmp_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bn_cmp_words(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

14:                                               ; preds = %3
  %15 = load i64*, i64** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %15, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %14
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp sgt i64 %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 -1
  store i32 %35, i32* %4, align 4
  br label %67

36:                                               ; preds = %14
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 2
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %63, %36
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %39
  %43 = load i64*, i64** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %9, align 8
  %48 = load i64*, i64** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %42
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp sgt i64 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 -1
  store i32 %61, i32* %4, align 4
  br label %67

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %8, align 4
  br label %39

66:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %56, %30, %13
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
