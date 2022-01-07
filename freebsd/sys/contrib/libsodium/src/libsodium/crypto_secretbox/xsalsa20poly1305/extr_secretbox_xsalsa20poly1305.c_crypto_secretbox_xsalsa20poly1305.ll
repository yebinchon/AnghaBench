; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_secretbox/xsalsa20poly1305/extr_secretbox_xsalsa20poly1305.c_crypto_secretbox_xsalsa20poly1305.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_secretbox/xsalsa20poly1305/extr_secretbox_xsalsa20poly1305.c_crypto_secretbox_xsalsa20poly1305.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_secretbox_xsalsa20poly1305(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ult i64 %13, 32
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %43

16:                                               ; preds = %5
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @crypto_stream_xsalsa20_xor(i8* %17, i8* %18, i64 %19, i8* %20, i8* %21)
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 16
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 32
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 %27, 32
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @crypto_onetimeauth_poly1305(i8* %24, i8* %26, i64 %28, i8* %29)
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %39, %16
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 16
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %31

42:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %15
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @crypto_stream_xsalsa20_xor(i8*, i8*, i64, i8*, i8*) #1

declare dso_local i32 @crypto_onetimeauth_poly1305(i8*, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
