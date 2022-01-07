; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_box_seal.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_box_seal.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_SECRETKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_SEALBYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"crypto_box_seal() failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"crypto_box_seal_open() failure\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %11 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %2, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %3, align 8
  %15 = load i32, i32* @crypto_box_SECRETKEYBYTES, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %4, align 8
  %18 = call i32 @crypto_box_keypair(i8* %14, i8* %17)
  %19 = call i64 @randombytes_uniform(i32 1000)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* @crypto_box_SEALBYTES, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %20, %21
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @sodium_malloc(i64 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @sodium_malloc(i64 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %7, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @sodium_malloc(i64 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @randombytes_buf(i8* %32, i64 %33)
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @crypto_box_seal(i8* %35, i8* %36, i64 %37, i8* %14)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %0
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %82

42:                                               ; preds = %0
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @crypto_box_seal_open(i8* %43, i8* %44, i64 %45, i8* %14, i8* %17)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %82

50:                                               ; preds = %42
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @memcmp(i8* %51, i8* %52, i64 %53)
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @crypto_box_seal_open(i8* %56, i8* %57, i64 0, i8* %14, i8* %17)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %9, align 8
  %63 = sub i64 %62, 1
  %64 = call i32 @crypto_box_seal_open(i8* %60, i8* %61, i64 %63, i8* %14, i8* %17)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @crypto_box_seal_open(i8* %66, i8* %67, i64 %68, i8* %17, i8* %14)
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @sodium_free(i8* %71)
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @sodium_free(i8* %73)
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @sodium_free(i8* %75)
  %77 = call i64 (...) @crypto_box_sealbytes()
  %78 = load i64, i64* @crypto_box_SEALBYTES, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %82

82:                                               ; preds = %50, %48, %40
  %83 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %1, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_box_keypair(i8*, i8*) #2

declare dso_local i64 @randombytes_uniform(i32) #2

declare dso_local i64 @sodium_malloc(i64) #2

declare dso_local i32 @randombytes_buf(i8*, i64) #2

declare dso_local i64 @crypto_box_seal(i8*, i8*, i64, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @crypto_box_seal_open(i8*, i8*, i64, i8*, i8*) #2

declare dso_local i32 @memcmp(i8*, i8*, i64) #2

declare dso_local i32 @sodium_free(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @crypto_box_sealbytes(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
