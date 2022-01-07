; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_gnutls.c_gnutls_digest_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_gnutls.c_gnutls_digest_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPG_ERR_NO_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32**, i64*, i32*)* @gnutls_digest_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnutls_digest_vector(i32 %0, i64 %1, i32** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32** %2, i32*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = call i64 (...) @TEST_FAIL()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %58

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @gcry_md_open(i32* %12, i32 %19, i32 0)
  %21 = load i64, i64* @GPG_ERR_NO_ERROR, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %6, align 4
  br label %58

24:                                               ; preds = %18
  store i64 0, i64* %14, align 8
  br label %25

25:                                               ; preds = %40, %24
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i32, i32* %12, align 4
  %31 = load i32**, i32*** %9, align 8
  %32 = load i64, i64* %14, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %14, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @gcry_md_write(i32 %30, i32* %34, i64 %38)
  br label %40

40:                                               ; preds = %29
  %41 = load i64, i64* %14, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %14, align 8
  br label %25

43:                                               ; preds = %25
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i8* @gcry_md_read(i32 %44, i32 %45)
  store i8* %46, i8** %13, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i32*, i32** %11, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @gcry_md_get_algo_dlen(i32 %52)
  %54 = call i32 @memcpy(i32* %50, i8* %51, i32 %53)
  br label %55

55:                                               ; preds = %49, %43
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @gcry_md_close(i32 %56)
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %23, %17
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i64 @gcry_md_open(i32*, i32, i32) #1

declare dso_local i32 @gcry_md_write(i32, i32*, i64) #1

declare dso_local i8* @gcry_md_read(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @gcry_md_get_algo_dlen(i32) #1

declare dso_local i32 @gcry_md_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
