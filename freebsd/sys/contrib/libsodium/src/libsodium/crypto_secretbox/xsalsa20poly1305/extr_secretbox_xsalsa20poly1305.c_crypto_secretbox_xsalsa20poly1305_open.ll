; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_secretbox/xsalsa20poly1305/extr_secretbox_xsalsa20poly1305.c_crypto_secretbox_xsalsa20poly1305_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_secretbox/xsalsa20poly1305/extr_secretbox_xsalsa20poly1305.c_crypto_secretbox_xsalsa20poly1305_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_secretbox_xsalsa20poly1305_open(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [32 x i8], align 16
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ult i64 %14, 32
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %51

17:                                               ; preds = %5
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %19 = load i8*, i8** %10, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @crypto_stream_xsalsa20(i8* %18, i32 32, i8* %19, i8* %20)
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 16
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 32
  %26 = load i64, i64* %9, align 8
  %27 = sub i64 %26, 32
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %29 = call i64 @crypto_onetimeauth_poly1305_verify(i8* %23, i8* %25, i64 %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i32 -1, i32* %6, align 4
  br label %51

32:                                               ; preds = %17
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @crypto_stream_xsalsa20_xor(i8* %33, i8* %34, i64 %35, i8* %36, i8* %37)
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %47, %32
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %40, 32
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 0, i8* %46, align 1
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %39

50:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %31, %16
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @crypto_stream_xsalsa20(i8*, i32, i8*, i8*) #1

declare dso_local i64 @crypto_onetimeauth_poly1305_verify(i8*, i8*, i64, i8*) #1

declare dso_local i32 @crypto_stream_xsalsa20_xor(i8*, i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
