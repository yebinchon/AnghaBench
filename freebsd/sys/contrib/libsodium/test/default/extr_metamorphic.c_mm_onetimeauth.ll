; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_metamorphic.c_mm_onetimeauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_metamorphic.c_mm_onetimeauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ITER = common dso_local global i32 0, align 4
@MAXLEN = common dso_local global i32 0, align 4
@crypto_onetimeauth_KEYBYTES = common dso_local global i64 0, align 8
@crypto_onetimeauth_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mm_onetimeauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mm_onetimeauth() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %85, %0
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @MAX_ITER, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %88

14:                                               ; preds = %10
  %15 = load i32, i32* @MAXLEN, align 4
  %16 = call i64 @randombytes_uniform(i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @sodium_malloc(i64 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %5, align 8
  %20 = load i64, i64* @crypto_onetimeauth_KEYBYTES, align 8
  %21 = call i64 @sodium_malloc(i64 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %4, align 8
  %23 = load i64, i64* @crypto_onetimeauth_BYTES, align 8
  %24 = call i64 @sodium_malloc(i64 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %2, align 8
  %26 = load i64, i64* @crypto_onetimeauth_BYTES, align 8
  %27 = call i64 @sodium_malloc(i64 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @crypto_onetimeauth_keygen(i8* %29)
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @randombytes_buf(i8* %31, i64 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @crypto_onetimeauth_init(i32* %1, i8* %34)
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @randombytes_uniform(i32 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = call i64 @randombytes_uniform(i32 %42)
  store i64 %43, i64* %8, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @crypto_onetimeauth_update(i32* %1, i8* %44, i64 %45)
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @crypto_onetimeauth_update(i32* %1, i8* %49, i64 %50)
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub i64 %57, %58
  %60 = load i64, i64* %8, align 8
  %61 = sub i64 %59, %60
  %62 = call i32 @crypto_onetimeauth_update(i32* %1, i8* %56, i64 %61)
  %63 = load i8*, i8** %2, align 8
  %64 = call i32 @crypto_onetimeauth_final(i32* %1, i8* %63)
  %65 = load i8*, i8** %3, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @crypto_onetimeauth(i8* %65, i8* %66, i64 %67, i8* %68)
  %70 = load i8*, i8** %2, align 8
  %71 = load i8*, i8** %3, align 8
  %72 = load i64, i64* @crypto_onetimeauth_BYTES, align 8
  %73 = call i64 @memcmp(i8* %70, i8* %71, i64 %72)
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @sodium_free(i8* %77)
  %79 = load i8*, i8** %2, align 8
  %80 = call i32 @sodium_free(i8* %79)
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @sodium_free(i8* %81)
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @sodium_free(i8* %83)
  br label %85

85:                                               ; preds = %14
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %10

88:                                               ; preds = %10
  ret void
}

declare dso_local i64 @randombytes_uniform(i32) #1

declare dso_local i64 @sodium_malloc(i64) #1

declare dso_local i32 @crypto_onetimeauth_keygen(i8*) #1

declare dso_local i32 @randombytes_buf(i8*, i64) #1

declare dso_local i32 @crypto_onetimeauth_init(i32*, i8*) #1

declare dso_local i32 @crypto_onetimeauth_update(i32*, i8*, i64) #1

declare dso_local i32 @crypto_onetimeauth_final(i32*, i8*) #1

declare dso_local i32 @crypto_onetimeauth(i8*, i8*, i64, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
