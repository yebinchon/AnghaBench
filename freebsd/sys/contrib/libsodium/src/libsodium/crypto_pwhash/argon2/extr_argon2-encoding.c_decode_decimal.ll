; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2-encoding.c_decode_decimal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2-encoding.c_decode_decimal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @decode_decimal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decode_decimal(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %7, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %45, %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 48
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 57
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %10
  br label %48

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 48
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @ULONG_MAX, align 4
  %25 = sdiv i32 %24, 10
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i8* null, i8** %3, align 8
  br label %67

29:                                               ; preds = %20
  %30 = load i64, i64* %7, align 8
  %31 = mul i64 %30, 10
  store i64 %31, i64* %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = load i32, i32* @ULONG_MAX, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %7, align 8
  %37 = sub i64 %35, %36
  %38 = icmp ugt i64 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i8* null, i8** %3, align 8
  br label %67

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  br label %10

48:                                               ; preds = %19
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = icmp eq i8* %49, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 48
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = icmp ne i8* %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %48
  store i8* null, i8** %3, align 8
  br label %67

63:                                               ; preds = %57, %52
  %64 = load i64, i64* %7, align 8
  %65 = load i64*, i64** %5, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i8*, i8** %4, align 8
  store i8* %66, i8** %3, align 8
  br label %67

67:                                               ; preds = %63, %62, %39, %28
  %68 = load i8*, i8** %3, align 8
  ret i8* %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
