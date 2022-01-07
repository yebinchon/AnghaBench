; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_scrypt.c_pkey_scrypt_set_membuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_scrypt.c_pkey_scrypt_set_membuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KDF_F_PKEY_SCRYPT_SET_MEMBUF = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i8*, i32)* @pkey_scrypt_set_membuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_scrypt_set_membuf(i8** %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i8*, i8** %8, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %50

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %50

17:                                               ; preds = %13
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i8**, i8*** %6, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @OPENSSL_clear_free(i8* %23, i64 %25)
  br label %27

27:                                               ; preds = %21, %17
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i8* @OPENSSL_memdup(i8* %31, i32 %32)
  %34 = load i8**, i8*** %6, align 8
  store i8* %33, i8** %34, align 8
  br label %38

35:                                               ; preds = %27
  %36 = call i8* @OPENSSL_malloc(i32 1)
  %37 = load i8**, i8*** %6, align 8
  store i8* %36, i8** %37, align 8
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i8**, i8*** %6, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @KDF_F_PKEY_SCRYPT_SET_MEMBUF, align 4
  %44 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %45 = call i32 @KDFerr(i32 %43, i32 %44)
  store i32 0, i32* %5, align 4
  br label %50

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64*, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  store i32 1, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %42, %16, %12
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

declare dso_local i8* @OPENSSL_memdup(i8*, i32) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @KDFerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
