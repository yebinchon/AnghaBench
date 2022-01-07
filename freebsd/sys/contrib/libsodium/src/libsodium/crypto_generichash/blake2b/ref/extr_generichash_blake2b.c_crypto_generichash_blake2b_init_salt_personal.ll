; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_generichash/blake2b/ref/extr_generichash_blake2b.c_crypto_generichash_blake2b_init_salt_personal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_generichash/blake2b/ref/extr_generichash_blake2b.c_crypto_generichash_blake2b_init_salt_personal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLAKE2B_OUTBYTES = common dso_local global i64 0, align 8
@BLAKE2B_KEYBYTES = common dso_local global i64 0, align 8
@UINT8_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_generichash_blake2b_init_salt_personal(i32* %0, i8* %1, i64 %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %14 = load i64, i64* %11, align 8
  %15 = icmp ule i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %6
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @BLAKE2B_OUTBYTES, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @BLAKE2B_KEYBYTES, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16, %6
  store i32 -1, i32* %7, align 4
  br label %65

25:                                               ; preds = %20
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @UINT8_MAX, align 8
  %28 = icmp ule i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @UINT8_MAX, align 8
  %33 = icmp ule i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %25
  %39 = load i64, i64* %10, align 8
  %40 = icmp ule i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38, %25
  %42 = load i32*, i32** %8, align 8
  %43 = load i64, i64* %11, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i64 @blake2b_init_salt_personal(i32* %42, i32 %44, i8* %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 -1, i32* %7, align 4
  br label %65

50:                                               ; preds = %41
  br label %64

51:                                               ; preds = %38
  %52 = load i32*, i32** %8, align 8
  %53 = load i64, i64* %11, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i8*, i8** %12, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = call i64 @blake2b_init_key_salt_personal(i32* %52, i32 %54, i8* %55, i32 %57, i8* %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  store i32 -1, i32* %7, align 4
  br label %65

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %50
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %62, %49, %24
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @blake2b_init_salt_personal(i32*, i32, i8*, i8*) #1

declare dso_local i64 @blake2b_init_key_salt_personal(i32*, i32, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
