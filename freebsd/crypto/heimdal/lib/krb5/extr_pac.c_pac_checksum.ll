; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_pac.c_pac_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_pac.c_pac_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@CKSUMTYPE_HMAC_MD5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i64*, i64*)* @pac_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pac_checksum(i32 %0, i32* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* null, i32** %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i64 @krb5_crypto_init(i32 %13, i32* %14, i32 0, i32** %12)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* %11, align 8
  store i64 %19, i64* %5, align 8
  br label %53

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = call i64 @krb5_crypto_get_checksum_type(i32 %21, i32* %22, i64* %10)
  store i64 %23, i64* %11, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @krb5_crypto_destroy(i32 %24, i32* %25)
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i64, i64* %11, align 8
  store i64 %30, i64* %5, align 8
  br label %53

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @krb5_checksum_is_keyed(i32 %32, i64 %33)
  %35 = load i64, i64* @FALSE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i64, i64* @CKSUMTYPE_HMAC_MD5, align 8
  %39 = load i64*, i64** %8, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i64*, i64** %9, align 8
  store i64 16, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %6, align 4
  %43 = load i64, i64* %10, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = call i64 @krb5_checksumsize(i32 %42, i64 %43, i64* %44)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i64, i64* %11, align 8
  store i64 %49, i64* %5, align 8
  br label %53

50:                                               ; preds = %41
  %51 = load i64, i64* %10, align 8
  %52 = load i64*, i64** %8, align 8
  store i64 %51, i64* %52, align 8
  store i64 0, i64* %5, align 8
  br label %53

53:                                               ; preds = %50, %48, %29, %18
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32**) #1

declare dso_local i64 @krb5_crypto_get_checksum_type(i32, i32*, i64*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32*) #1

declare dso_local i64 @krb5_checksum_is_keyed(i32, i64) #1

declare dso_local i64 @krb5_checksumsize(i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
