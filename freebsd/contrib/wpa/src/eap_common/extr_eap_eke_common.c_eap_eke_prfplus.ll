; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_prfplus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_prfplus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EAP_EKE_PRF_HMAC_SHA1 = common dso_local global i64 0, align 8
@EAP_EKE_PRF_HMAC_SHA2_256 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*, i64, i64*, i64, i64*, i64)* @eap_eke_prfplus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_eke_prfplus(i64 %0, i64* %1, i64 %2, i64* %3, i64 %4, i64* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @EAP_EKE_PRF_HMAC_SHA1, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %7
  %20 = load i64*, i64** %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64*, i64** %12, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i64*, i64** %14, align 8
  %25 = load i64, i64* %15, align 8
  %26 = call i32 @eap_eke_prf_hmac_sha1(i64* %20, i64 %21, i64* %22, i64 %23, i64* %24, i64 %25)
  store i32 %26, i32* %8, align 4
  br label %40

27:                                               ; preds = %7
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @EAP_EKE_PRF_HMAC_SHA2_256, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i64*, i64** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64*, i64** %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64*, i64** %14, align 8
  %37 = load i64, i64* %15, align 8
  %38 = call i32 @eap_eke_prf_hmac_sha256(i64* %32, i64 %33, i64* %34, i64 %35, i64* %36, i64 %37)
  store i32 %38, i32* %8, align 4
  br label %40

39:                                               ; preds = %27
  store i32 -1, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %31, %19
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @eap_eke_prf_hmac_sha1(i64*, i64, i64*, i64, i64*, i64) #1

declare dso_local i32 @eap_eke_prf_hmac_sha256(i64*, i64, i64*, i64, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
