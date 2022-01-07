; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_gnutls.c_gnutls_hmac_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_gnutls.c_gnutls_hmac_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GCRY_MD_FLAG_HMAC = common dso_local global i32 0, align 4
@GPG_ERR_NO_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, i64, i32**, i64*, i32*)* @gnutls_hmac_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnutls_hmac_vector(i32 %0, i32* %1, i64 %2, i64 %3, i32** %4, i64* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32** %4, i32*** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = call i64 (...) @TEST_FAIL()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %73

22:                                               ; preds = %7
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @GCRY_MD_FLAG_HMAC, align 4
  %25 = call i64 @gcry_md_open(i32* %16, i32 %23, i32 %24)
  %26 = load i64, i64* @GPG_ERR_NO_ERROR, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %8, align 4
  br label %73

29:                                               ; preds = %22
  %30 = load i32, i32* %16, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @gcry_md_setkey(i32 %30, i32* %31, i64 %32)
  %34 = load i64, i64* @GPG_ERR_NO_ERROR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @gcry_md_close(i32 %37)
  store i32 -1, i32* %8, align 4
  br label %73

39:                                               ; preds = %29
  store i64 0, i64* %18, align 8
  br label %40

40:                                               ; preds = %55, %39
  %41 = load i64, i64* %18, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i32, i32* %16, align 4
  %46 = load i32**, i32*** %13, align 8
  %47 = load i64, i64* %18, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i64*, i64** %14, align 8
  %51 = load i64, i64* %18, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @gcry_md_write(i32 %45, i32* %49, i64 %53)
  br label %55

55:                                               ; preds = %44
  %56 = load i64, i64* %18, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %18, align 8
  br label %40

58:                                               ; preds = %40
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i8* @gcry_md_read(i32 %59, i32 %60)
  store i8* %61, i8** %17, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32*, i32** %15, align 8
  %66 = load i8*, i8** %17, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @gcry_md_get_algo_dlen(i32 %67)
  %69 = call i32 @memcpy(i32* %65, i8* %66, i32 %68)
  br label %70

70:                                               ; preds = %64, %58
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @gcry_md_close(i32 %71)
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %36, %28, %21
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i64 @gcry_md_open(i32*, i32, i32) #1

declare dso_local i64 @gcry_md_setkey(i32, i32*, i64) #1

declare dso_local i32 @gcry_md_close(i32) #1

declare dso_local i32 @gcry_md_write(i32, i32*, i64) #1

declare dso_local i8* @gcry_md_read(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @gcry_md_get_algo_dlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
