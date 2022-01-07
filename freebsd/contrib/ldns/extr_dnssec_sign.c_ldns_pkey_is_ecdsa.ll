; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_pkey_is_ecdsa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_pkey_is_ecdsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@key = common dso_local global %struct.TYPE_2__* null, align 8
@EVP_PKEY_EC = common dso_local global i64 0, align 8
@NID_X9_62_prime256v1 = common dso_local global i64 0, align 8
@NID_secp384r1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ldns_pkey_is_ecdsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_pkey_is_ecdsa(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @key, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @EVP_PKEY_type(i32 %8)
  %10 = load i64, i64* @EVP_PKEY_EC, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @EVP_PKEY_get1_EC_KEY(i32* %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @EC_KEY_get0_group(i32* %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @EC_KEY_free(i32* %21)
  store i32 0, i32* %2, align 4
  br label %42

23:                                               ; preds = %13
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @EC_GROUP_get_curve_name(i32* %24)
  %26 = load i64, i64* @NID_X9_62_prime256v1, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @EC_KEY_free(i32* %29)
  store i32 32, i32* %2, align 4
  br label %42

31:                                               ; preds = %23
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @EC_GROUP_get_curve_name(i32* %32)
  %34 = load i64, i64* @NID_secp384r1, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @EC_KEY_free(i32* %37)
  store i32 48, i32* %2, align 4
  br label %42

39:                                               ; preds = %31
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @EC_KEY_free(i32* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %36, %28, %20, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @EVP_PKEY_type(i32) #1

declare dso_local i32* @EVP_PKEY_get1_EC_KEY(i32*) #1

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i64 @EC_GROUP_get_curve_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
