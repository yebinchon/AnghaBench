; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_box/extr_crypto_box_seal.c_crypto_box_seal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_box/extr_crypto_box_seal.c_crypto_box_seal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_SECRETKEYBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_box_seal(i8* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %23 = load i32, i32* @crypto_box_SECRETKEYBYTES, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %26 = call i64 @crypto_box_keypair(i8* %22, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %50

29:                                               ; preds = %4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %32 = call i32 @memcpy(i8* %30, i8* %22, i32 %31)
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @_crypto_box_seal_nonce(i8* %19, i8* %22, i8* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @crypto_box_easy(i8* %38, i8* %39, i64 %40, i8* %19, i8* %41, i8* %25)
  store i32 %42, i32* %14, align 4
  %43 = trunc i64 %24 to i32
  %44 = call i32 @sodium_memzero(i8* %25, i32 %43)
  %45 = trunc i64 %21 to i32
  %46 = call i32 @sodium_memzero(i8* %22, i32 %45)
  %47 = trunc i64 %17 to i32
  %48 = call i32 @sodium_memzero(i8* %19, i32 %47)
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %50

50:                                               ; preds = %29, %28
  %51 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @crypto_box_keypair(i8*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @_crypto_box_seal_nonce(i8*, i8*, i8*) #2

declare dso_local i32 @crypto_box_easy(i8*, i8*, i64, i8*, i8*, i8*) #2

declare dso_local i32 @sodium_memzero(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
