; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_generichash/blake2b/ref/extr_blake2b-ref.c_crypto_generichash_blake2b__init_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_generichash/blake2b/ref/extr_blake2b-ref.c_crypto_generichash_blake2b__init_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i64*, i64*, i64*, i64, i64, i32, i32 }

@BLAKE2B_OUTBYTES = common dso_local global i64 0, align 8
@BLAKE2B_KEYBYTES = common dso_local global i64 0, align 8
@BLAKE2B_BLOCKBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blake2b_init_key(i32* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [1 x %struct.TYPE_3__], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @BLAKE2B_OUTBYTES, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %4
  %19 = call i32 (...) @sodium_misuse()
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @BLAKE2B_KEYBYTES, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %23, %20
  %31 = call i32 (...) @sodium_misuse()
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 16
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i32 1, i32* %40, align 16
  %41 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store i32 1, i32* %42, align 4
  %43 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @STORE32_LE(i32 %45, i32 0)
  %47 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 16
  %50 = call i32 @STORE64_LE(i32 %49, i32 0)
  %51 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 8
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 7
  store i64 0, i64* %54, align 16
  %55 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i64*, i64** %56, align 8
  %58 = call i32 @memset(i64* %57, i32 0, i32 8)
  %59 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  %61 = load i64*, i64** %60, align 16
  %62 = call i32 @memset(i64* %61, i32 0, i32 8)
  %63 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 6
  %65 = load i64*, i64** %64, align 8
  %66 = call i32 @memset(i64* %65, i32 0, i32 8)
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %69 = call i64 @blake2b_init_param(i32* %67, %struct.TYPE_3__* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %32
  %72 = call i32 (...) @sodium_misuse()
  br label %73

73:                                               ; preds = %71, %32
  %74 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %75 = zext i32 %74 to i64
  %76 = call i8* @llvm.stacksave()
  store i8* %76, i8** %10, align 8
  %77 = alloca i64, i64 %75, align 16
  store i64 %75, i64* %11, align 8
  %78 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %79 = call i32 @memset(i64* %77, i32 0, i32 %78)
  %80 = load i8*, i8** %7, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @memcpy(i64* %77, i8* %80, i64 %81)
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %85 = call i32 @blake2b_update(i32* %83, i64* %77, i32 %84)
  %86 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %87 = call i32 @sodium_memzero(i64* %77, i32 %86)
  %88 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %88)
  ret i32 0
}

declare dso_local i32 @sodium_misuse(...) #1

declare dso_local i32 @STORE32_LE(i32, i32) #1

declare dso_local i32 @STORE64_LE(i32, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @blake2b_init_param(i32*, %struct.TYPE_3__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

declare dso_local i32 @blake2b_update(i32*, i64*, i32) #1

declare dso_local i32 @sodium_memzero(i64*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
