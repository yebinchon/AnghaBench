; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_sign/ed25519/ref10/extr_open.c_crypto_sign_ed25519_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_sign/ed25519/ref10/extr_open.c_crypto_sign_ed25519_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_sign_ed25519_MESSAGEBYTES_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_sign_ed25519_open(i8* %0, i64* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp ult i64 %13, 64
  br i1 %14, label %20, label %15

15:                                               ; preds = %5
  %16 = load i64, i64* %10, align 8
  %17 = sub i64 %16, 64
  %18 = load i64, i64* @crypto_sign_ed25519_MESSAGEBYTES_MAX, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %5
  br label %47

21:                                               ; preds = %15
  %22 = load i64, i64* %10, align 8
  %23 = sub i64 %22, 64
  store i64 %23, i64* %12, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 64
  %27 = load i64, i64* %12, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i64 @crypto_sign_ed25519_verify_detached(i8* %24, i8* %26, i64 %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @memset(i8* %32, i32 0, i64 %33)
  br label %47

35:                                               ; preds = %21
  %36 = load i64*, i64** %8, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* %12, align 8
  %40 = load i64*, i64** %8, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 64
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @memmove(i8* %42, i8* %44, i64 %45)
  store i32 0, i32* %6, align 4
  br label %53

47:                                               ; preds = %31, %20
  %48 = load i64*, i64** %8, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i64*, i64** %8, align 8
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %50, %47
  store i32 -1, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i64 @crypto_sign_ed25519_verify_detached(i8*, i8*, i64, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
