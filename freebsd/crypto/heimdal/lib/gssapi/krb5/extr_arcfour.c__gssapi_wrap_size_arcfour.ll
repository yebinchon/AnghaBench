; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_arcfour.c__gssapi_wrap_size_arcfour.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_arcfour.c__gssapi_wrap_size_arcfour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gssapi_wrap_size_arcfour(i64* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i64* %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i64* %0, i64** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32*, i32** %17, align 8
  %22 = call i64 @krb5_crypto_init(i32 %20, i32* %21, i32 0, i32* %19)
  store i64 %22, i64* %18, align 8
  %23 = load i64, i64* %18, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %8
  %26 = load i64, i64* %18, align 8
  %27 = load i64*, i64** %10, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %28, i64* %9, align 8
  br label %49

29:                                               ; preds = %8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %19, align 4
  %32 = load i64, i64* %15, align 8
  %33 = load i64*, i64** %16, align 8
  %34 = call i64 @max_wrap_length_arcfour(i32 %30, i32 %31, i64 %32, i64* %33)
  store i64 %34, i64* %18, align 8
  %35 = load i64, i64* %18, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load i64, i64* %18, align 8
  %39 = load i64*, i64** %10, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %19, align 4
  %42 = call i32 @krb5_crypto_destroy(i32 %40, i32 %41)
  %43 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %43, i64* %9, align 8
  br label %49

44:                                               ; preds = %29
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %19, align 4
  %47 = call i32 @krb5_crypto_destroy(i32 %45, i32 %46)
  %48 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %44, %37, %25
  %50 = load i64, i64* %9, align 8
  ret i64 %50
}

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32*) #1

declare dso_local i64 @max_wrap_length_arcfour(i32, i32, i64, i64*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
