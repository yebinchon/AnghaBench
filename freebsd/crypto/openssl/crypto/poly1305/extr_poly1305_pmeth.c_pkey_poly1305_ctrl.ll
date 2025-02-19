; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/poly1305/extr_poly1305_pmeth.c_pkey_poly1305_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/poly1305/extr_poly1305_pmeth.c_pkey_poly1305_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@POLY1305_KEY_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*)* @pkey_poly1305_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_poly1305_ctrl(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
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
  switch i32 %15, label %50 [
    i32 129, label %16
    i32 128, label %17
    i32 130, label %17
  ]

16:                                               ; preds = %4
  br label %51

17:                                               ; preds = %4, %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i8*, i8** %9, align 8
  store i8* %21, i8** %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %12, align 8
  br label %28

24:                                               ; preds = %17
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @EVP_PKEY_CTX_get0_pkey(i32* %25)
  %27 = call i8* @EVP_PKEY_get0_poly1305(i32 %26, i64* %12)
  store i8* %27, i8** %11, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i8*, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @POLY1305_KEY_SIZE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i8*, i8** %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @ASN1_OCTET_STRING_set(i32* %37, i8* %38, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35, %31, %28
  store i32 0, i32* %5, align 4
  br label %52

43:                                               ; preds = %35
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @ASN1_STRING_get0_data(i32* %47)
  %49 = call i32 @Poly1305_Init(i32* %45, i32 %48)
  br label %51

50:                                               ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %52

51:                                               ; preds = %43, %16
  store i32 1, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %50, %42
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_3__* @EVP_PKEY_CTX_get_data(i32*) #1

declare dso_local i8* @EVP_PKEY_get0_poly1305(i32, i64*) #1

declare dso_local i32 @EVP_PKEY_CTX_get0_pkey(i32*) #1

declare dso_local i32 @ASN1_OCTET_STRING_set(i32*, i8*, i64) #1

declare dso_local i32 @Poly1305_Init(i32*, i32) #1

declare dso_local i32 @ASN1_STRING_get0_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
