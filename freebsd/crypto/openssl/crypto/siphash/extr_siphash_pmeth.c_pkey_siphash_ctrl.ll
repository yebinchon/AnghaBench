; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/siphash/extr_siphash_pmeth.c_pkey_siphash_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/siphash/extr_siphash_pmeth.c_pkey_siphash_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SIPHASH_KEY_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*)* @pkey_siphash_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_siphash_ctrl(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.TYPE_3__* @EVP_PKEY_CTX_get_data(i32* %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %10, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %55 [
    i32 130, label %16
    i32 129, label %17
    i32 128, label %22
    i32 131, label %22
  ]

16:                                               ; preds = %4
  br label %56

17:                                               ; preds = %4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @SipHash_set_hash_size(i32* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %57

22:                                               ; preds = %4, %4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8*, i8** %9, align 8
  store i8* %26, i8** %11, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %12, align 8
  br label %33

29:                                               ; preds = %22
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @EVP_PKEY_CTX_get0_pkey(i32* %30)
  %32 = call i8* @EVP_PKEY_get0_siphash(i32 %31, i64* %12)
  store i8* %32, i8** %11, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i8*, i8** %11, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @SIPHASH_KEY_SIZE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @ASN1_OCTET_STRING_set(i32* %42, i8* %43, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40, %36, %33
  store i32 0, i32* %5, align 4
  br label %57

48:                                               ; preds = %40
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @ASN1_STRING_get0_data(i32* %52)
  %54 = call i32 @SipHash_Init(i32* %50, i32 %53, i32 0, i32 0)
  store i32 %54, i32* %5, align 4
  br label %57

55:                                               ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %57

56:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %55, %48, %47, %17
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_3__* @EVP_PKEY_CTX_get_data(i32*) #1

declare dso_local i32 @SipHash_set_hash_size(i32*, i32) #1

declare dso_local i8* @EVP_PKEY_get0_siphash(i32, i64*) #1

declare dso_local i32 @EVP_PKEY_CTX_get0_pkey(i32*) #1

declare dso_local i32 @ASN1_OCTET_STRING_set(i32*, i8*, i64) #1

declare dso_local i32 @SipHash_Init(i32*, i32, i32, i32) #1

declare dso_local i32 @ASN1_STRING_get0_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
