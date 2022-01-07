; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_pmeth_lib.c_EVP_PKEY_meth_get0.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_pmeth_lib.c_EVP_PKEY_meth_get0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@standard_methods = common dso_local global i32** null, align 8
@app_pkey_methods = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @EVP_PKEY_meth_get0(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i32**, i32*** @standard_methods, align 8
  %6 = call i64 @OSSL_NELEM(i32** %5)
  %7 = icmp ult i64 %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32**, i32*** @standard_methods, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds i32*, i32** %9, i64 %10
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %2, align 8
  br label %31

13:                                               ; preds = %1
  %14 = load i32*, i32** @app_pkey_methods, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32* null, i32** %2, align 8
  br label %31

17:                                               ; preds = %13
  %18 = load i32**, i32*** @standard_methods, align 8
  %19 = call i64 @OSSL_NELEM(i32** %18)
  %20 = load i64, i64* %3, align 8
  %21 = sub i64 %20, %19
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i32*, i32** @app_pkey_methods, align 8
  %24 = call i64 @sk_EVP_PKEY_METHOD_num(i32* %23)
  %25 = icmp uge i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32* null, i32** %2, align 8
  br label %31

27:                                               ; preds = %17
  %28 = load i32*, i32** @app_pkey_methods, align 8
  %29 = load i64, i64* %3, align 8
  %30 = call i32* @sk_EVP_PKEY_METHOD_value(i32* %28, i64 %29)
  store i32* %30, i32** %2, align 8
  br label %31

31:                                               ; preds = %27, %26, %16, %8
  %32 = load i32*, i32** %2, align 8
  ret i32* %32
}

declare dso_local i64 @OSSL_NELEM(i32**) #1

declare dso_local i64 @sk_EVP_PKEY_METHOD_num(i32*) #1

declare dso_local i32* @sk_EVP_PKEY_METHOD_value(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
