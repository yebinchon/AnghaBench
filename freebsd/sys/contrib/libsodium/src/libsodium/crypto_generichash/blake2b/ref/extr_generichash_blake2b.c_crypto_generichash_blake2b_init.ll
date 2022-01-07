; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_generichash/blake2b/ref/extr_generichash_blake2b.c_crypto_generichash_blake2b_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_generichash/blake2b/ref/extr_generichash_blake2b.c_crypto_generichash_blake2b_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLAKE2B_OUTBYTES = common dso_local global i64 0, align 8
@BLAKE2B_KEYBYTES = common dso_local global i64 0, align 8
@UINT8_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_generichash_blake2b_init(i32* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ule i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @BLAKE2B_OUTBYTES, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @BLAKE2B_KEYBYTES, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12, %4
  store i32 -1, i32* %5, align 4
  br label %57

21:                                               ; preds = %16
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @UINT8_MAX, align 8
  %24 = icmp ule i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @UINT8_MAX, align 8
  %29 = icmp ule i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %21
  %35 = load i64, i64* %8, align 8
  %36 = icmp ule i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34, %21
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i64 @blake2b_init(i32* %38, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 -1, i32* %5, align 4
  br label %57

44:                                               ; preds = %37
  br label %56

45:                                               ; preds = %34
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i64 @blake2b_init_key(i32* %46, i32 %48, i8* %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  br label %57

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %44
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %54, %43, %20
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @blake2b_init(i32*, i32) #1

declare dso_local i64 @blake2b_init_key(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
