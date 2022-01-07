; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_supported_proposal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_supported_proposal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EAP_EKE_DHGROUP_EKE_16 = common dso_local global i64 0, align 8
@EAP_EKE_ENCR_AES128_CBC = common dso_local global i64 0, align 8
@EAP_EKE_PRF_HMAC_SHA2_256 = common dso_local global i64 0, align 8
@EAP_EKE_MAC_HMAC_SHA2_256 = common dso_local global i64 0, align 8
@EAP_EKE_DHGROUP_EKE_15 = common dso_local global i64 0, align 8
@EAP_EKE_DHGROUP_EKE_14 = common dso_local global i64 0, align 8
@EAP_EKE_PRF_HMAC_SHA1 = common dso_local global i64 0, align 8
@EAP_EKE_MAC_HMAC_SHA1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @supported_proposal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @supported_proposal(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %4 = load i64*, i64** %3, align 8
  %5 = getelementptr inbounds i64, i64* %4, i64 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @EAP_EKE_DHGROUP_EKE_16, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load i64*, i64** %3, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EAP_EKE_ENCR_AES128_CBC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load i64*, i64** %3, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EAP_EKE_PRF_HMAC_SHA2_256, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i64*, i64** %3, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @EAP_EKE_MAC_HMAC_SHA2_256, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %104

28:                                               ; preds = %21, %15, %9, %1
  %29 = load i64*, i64** %3, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EAP_EKE_DHGROUP_EKE_15, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load i64*, i64** %3, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EAP_EKE_ENCR_AES128_CBC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load i64*, i64** %3, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EAP_EKE_PRF_HMAC_SHA2_256, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i64*, i64** %3, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EAP_EKE_MAC_HMAC_SHA2_256, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 1, i32* %2, align 4
  br label %104

53:                                               ; preds = %46, %40, %34, %28
  %54 = load i64*, i64** %3, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @EAP_EKE_DHGROUP_EKE_14, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = load i64*, i64** %3, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @EAP_EKE_ENCR_AES128_CBC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load i64*, i64** %3, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @EAP_EKE_PRF_HMAC_SHA2_256, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i64*, i64** %3, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @EAP_EKE_MAC_HMAC_SHA2_256, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 1, i32* %2, align 4
  br label %104

78:                                               ; preds = %71, %65, %59, %53
  %79 = load i64*, i64** %3, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @EAP_EKE_DHGROUP_EKE_14, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %78
  %85 = load i64*, i64** %3, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @EAP_EKE_ENCR_AES128_CBC, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load i64*, i64** %3, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @EAP_EKE_PRF_HMAC_SHA1, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i64*, i64** %3, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @EAP_EKE_MAC_HMAC_SHA1, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 1, i32* %2, align 4
  br label %104

103:                                              ; preds = %96, %90, %84, %78
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %102, %77, %52, %27
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
