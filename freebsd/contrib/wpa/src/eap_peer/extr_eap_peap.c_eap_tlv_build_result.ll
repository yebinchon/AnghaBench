; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_tlv_build_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_tlv_build_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i64 }

@NO_BINDING = common dso_local global i64 0, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_TLV = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@EAP_TLV_RESULT_TLV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_peap_data*, i32, i32, i32)* @eap_tlv_build_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_tlv_build_result(%struct.eap_sm* %0, %struct.eap_peap_data* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_peap_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_peap_data* %1, %struct.eap_peap_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %15 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NO_BINDING, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %19, %5
  store i64 6, i64* %13, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* %13, align 8
  %25 = add i64 %24, 60
  store i64 %25, i64* %13, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %28 = load i32, i32* @EAP_TYPE_TLV, align 4
  %29 = load i64, i64* %13, align 8
  %30 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.wpabuf* @eap_msg_alloc(i32 %27, i32 %28, i64 %29, i32 %30, i32 %31)
  store %struct.wpabuf* %32, %struct.wpabuf** %12, align 8
  %33 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %34 = icmp eq %struct.wpabuf* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %60

36:                                               ; preds = %26
  %37 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %38 = call i32 @wpabuf_put_u8(%struct.wpabuf* %37, i32 128)
  %39 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %40 = load i32, i32* @EAP_TLV_RESULT_TLV, align 4
  %41 = call i32 @wpabuf_put_u8(%struct.wpabuf* %39, i32 %40)
  %42 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %43 = call i32 @wpabuf_put_be16(%struct.wpabuf* %42, i32 2)
  %44 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @wpabuf_put_be16(%struct.wpabuf* %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %36
  %50 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %51 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %52 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %53 = call i64 @eap_tlv_add_cryptobinding(%struct.eap_sm* %50, %struct.eap_peap_data* %51, %struct.wpabuf* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %57 = call i32 @wpabuf_clear_free(%struct.wpabuf* %56)
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %60

58:                                               ; preds = %49, %36
  %59 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* %59, %struct.wpabuf** %6, align 8
  br label %60

60:                                               ; preds = %58, %55, %35
  %61 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %61
}

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i64 @eap_tlv_add_cryptobinding(%struct.eap_sm*, %struct.eap_peap_data*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
