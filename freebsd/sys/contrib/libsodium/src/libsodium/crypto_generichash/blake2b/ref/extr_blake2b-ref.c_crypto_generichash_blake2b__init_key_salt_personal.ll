; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_generichash/blake2b/ref/extr_blake2b-ref.c_crypto_generichash_blake2b__init_key_salt_personal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_generichash/blake2b/ref/extr_blake2b-ref.c_crypto_generichash_blake2b__init_key_salt_personal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32, i64*, i64*, i64*, i64, i64, i32, i32 }

@BLAKE2B_OUTBYTES = common dso_local global i64 0, align 8
@BLAKE2B_KEYBYTES = common dso_local global i64 0, align 8
@BLAKE2B_BLOCKBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blake2b_init_key_salt_personal(i32* %0, i64 %1, i8* %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [1 x %struct.TYPE_5__], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @BLAKE2B_OUTBYTES, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %6
  %23 = call i32 (...) @sodium_misuse()
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @BLAKE2B_KEYBYTES, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %27, %24
  %35 = call i32 (...) @sodium_misuse()
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 16
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i32 1, i32* %44, align 16
  %45 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  store i32 1, i32* %46, align 4
  %47 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @STORE32_LE(i32 %49, i32 0)
  %51 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 16
  %54 = call i32 @STORE64_LE(i32 %53, i32 0)
  %55 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 8
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 7
  store i64 0, i64* %58, align 16
  %59 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  %61 = load i64*, i64** %60, align 8
  %62 = call i32 @memset(i64* %61, i32 0, i32 8)
  %63 = load i8*, i8** %11, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %36
  %66 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %67 = load i8*, i8** %11, align 8
  %68 = bitcast i8* %67 to i64*
  %69 = call i32 @blake2b_param_set_salt(%struct.TYPE_5__* %66, i64* %68)
  br label %75

70:                                               ; preds = %36
  %71 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 5
  %73 = load i64*, i64** %72, align 16
  %74 = call i32 @memset(i64* %73, i32 0, i32 8)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i8*, i8** %12, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %80 = load i8*, i8** %12, align 8
  %81 = bitcast i8* %80 to i64*
  %82 = call i32 @blake2b_param_set_personal(%struct.TYPE_5__* %79, i64* %81)
  br label %88

83:                                               ; preds = %75
  %84 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 6
  %86 = load i64*, i64** %85, align 8
  %87 = call i32 @memset(i64* %86, i32 0, i32 8)
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %91 = call i64 @blake2b_init_param(i32* %89, %struct.TYPE_5__* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = call i32 (...) @sodium_misuse()
  br label %95

95:                                               ; preds = %93, %88
  %96 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %97 = zext i32 %96 to i64
  %98 = call i8* @llvm.stacksave()
  store i8* %98, i8** %14, align 8
  %99 = alloca i64, i64 %97, align 16
  store i64 %97, i64* %15, align 8
  %100 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %101 = call i32 @memset(i64* %99, i32 0, i32 %100)
  %102 = load i8*, i8** %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @memcpy(i64* %99, i8* %102, i64 %103)
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %107 = call i32 @blake2b_update(i32* %105, i64* %99, i32 %106)
  %108 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %109 = call i32 @sodium_memzero(i64* %99, i32 %108)
  %110 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %110)
  ret i32 0
}

declare dso_local i32 @sodium_misuse(...) #1

declare dso_local i32 @STORE32_LE(i32, i32) #1

declare dso_local i32 @STORE64_LE(i32, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @blake2b_param_set_salt(%struct.TYPE_5__*, i64*) #1

declare dso_local i32 @blake2b_param_set_personal(%struct.TYPE_5__*, i64*) #1

declare dso_local i64 @blake2b_init_param(i32*, %struct.TYPE_5__*) #1

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
