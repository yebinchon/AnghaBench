; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ed25519.c_get_hram.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ed25519.c_get_hram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i64)* @get_hram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_hram(i8* %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %23, %5
  %13 = load i64, i64* %11, align 8
  %14 = icmp ult i64 %13, 32
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %11, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 %19, i8* %22, align 1
  br label %23

23:                                               ; preds = %15
  %24 = load i64, i64* %11, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %11, align 8
  br label %12

26:                                               ; preds = %12
  store i64 32, i64* %11, align 8
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i64, i64* %11, align 8
  %29 = icmp ult i64 %28, 64
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %11, align 8
  %33 = sub i64 %32, 32
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8 %35, i8* %38, align 1
  br label %39

39:                                               ; preds = %30
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %11, align 8
  br label %27

42:                                               ; preds = %27
  store i64 64, i64* %11, align 8
  br label %43

43:                                               ; preds = %55, %42
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 %51, i8* %54, align 1
  br label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %11, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %11, align 8
  br label %43

58:                                               ; preds = %43
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @crypto_hash_sha512(i8* %59, i8* %60, i64 %61)
  ret void
}

declare dso_local i32 @crypto_hash_sha512(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
