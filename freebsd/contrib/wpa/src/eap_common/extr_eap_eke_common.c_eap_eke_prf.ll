; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_prf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_prf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EAP_EKE_PRF_HMAC_SHA1 = common dso_local global i64 0, align 8
@EAP_EKE_PRF_HMAC_SHA2_256 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*, i64, i64*, i64, i64*, i64, i64*)* @eap_eke_prf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_eke_prf(i64 %0, i64* %1, i64 %2, i64* %3, i64 %4, i64* %5, i64 %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca [2 x i64*], align 16
  %19 = alloca [2 x i64], align 16
  %20 = alloca i64, align 8
  store i64 %0, i64* %10, align 8
  store i64* %1, i64** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64* %3, i64** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64* %5, i64** %15, align 8
  store i64 %6, i64* %16, align 8
  store i64* %7, i64** %17, align 8
  store i64 1, i64* %20, align 8
  %21 = load i64*, i64** %13, align 8
  %22 = getelementptr inbounds [2 x i64*], [2 x i64*]* %18, i64 0, i64 0
  store i64* %21, i64** %22, align 16
  %23 = load i64, i64* %14, align 8
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  store i64 %23, i64* %24, align 16
  %25 = load i64*, i64** %15, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %8
  %28 = load i64, i64* %20, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %20, align 8
  %30 = load i64*, i64** %15, align 8
  %31 = getelementptr inbounds [2 x i64*], [2 x i64*]* %18, i64 0, i64 1
  store i64* %30, i64** %31, align 8
  %32 = load i64, i64* %16, align 8
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 1
  store i64 %32, i64* %33, align 8
  br label %34

34:                                               ; preds = %27, %8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @EAP_EKE_PRF_HMAC_SHA1, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i64*, i64** %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %20, align 8
  %42 = getelementptr inbounds [2 x i64*], [2 x i64*]* %18, i64 0, i64 0
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  %44 = load i64*, i64** %17, align 8
  %45 = call i32 @hmac_sha1_vector(i64* %39, i64 %40, i64 %41, i64** %42, i64* %43, i64* %44)
  store i32 %45, i32* %9, align 4
  br label %59

46:                                               ; preds = %34
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @EAP_EKE_PRF_HMAC_SHA2_256, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i64*, i64** %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %20, align 8
  %54 = getelementptr inbounds [2 x i64*], [2 x i64*]* %18, i64 0, i64 0
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  %56 = load i64*, i64** %17, align 8
  %57 = call i32 @hmac_sha256_vector(i64* %51, i64 %52, i64 %53, i64** %54, i64* %55, i64* %56)
  store i32 %57, i32* %9, align 4
  br label %59

58:                                               ; preds = %46
  store i32 -1, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %50, %38
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i32 @hmac_sha1_vector(i64*, i64, i64, i64**, i64*, i64*) #1

declare dso_local i32 @hmac_sha256_vector(i64*, i64, i64, i64**, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
