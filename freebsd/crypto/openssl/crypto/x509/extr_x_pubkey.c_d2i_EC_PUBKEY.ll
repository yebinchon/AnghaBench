; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x_pubkey.c_d2i_EC_PUBKEY.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x_pubkey.c_d2i_EC_PUBKEY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @d2i_EC_PUBKEY(i32** %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32** %0, i32*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32* @d2i_PUBKEY(i32* null, i8** %10, i64 %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %39

18:                                               ; preds = %3
  %19 = load i32*, i32** %8, align 8
  %20 = call i32* @EVP_PKEY_get1_EC_KEY(i32* %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @EVP_PKEY_free(i32* %21)
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32* null, i32** %4, align 8
  br label %39

26:                                               ; preds = %18
  %27 = load i8*, i8** %10, align 8
  %28 = load i8**, i8*** %6, align 8
  store i8* %27, i8** %28, align 8
  %29 = load i32**, i32*** %5, align 8
  %30 = icmp ne i32** %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32**, i32*** %5, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @EC_KEY_free(i32* %33)
  %35 = load i32*, i32** %9, align 8
  %36 = load i32**, i32*** %5, align 8
  store i32* %35, i32** %36, align 8
  br label %37

37:                                               ; preds = %31, %26
  %38 = load i32*, i32** %9, align 8
  store i32* %38, i32** %4, align 8
  br label %39

39:                                               ; preds = %37, %25, %17
  %40 = load i32*, i32** %4, align 8
  ret i32* %40
}

declare dso_local i32* @d2i_PUBKEY(i32*, i8**, i64) #1

declare dso_local i32* @EVP_PKEY_get1_EC_KEY(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
