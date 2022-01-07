; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_tlv_nak.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_tlv_nak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_tlv_nak_tlv = type { i8*, i32, i8*, i8* }

@EAP_TLV_TYPE_MANDATORY = common dso_local global i32 0, align 4
@EAP_TLV_NAK_TLV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i32, i32)* @eap_fast_tlv_nak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_fast_tlv_nak(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_tlv_nak_tlv*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = call %struct.wpabuf* @wpabuf_alloc(i32 32)
  store %struct.wpabuf* %8, %struct.wpabuf** %6, align 8
  %9 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %10 = icmp eq %struct.wpabuf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %33

12:                                               ; preds = %2
  %13 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %14 = call %struct.eap_tlv_nak_tlv* @wpabuf_put(%struct.wpabuf* %13, i32 32)
  store %struct.eap_tlv_nak_tlv* %14, %struct.eap_tlv_nak_tlv** %7, align 8
  %15 = load i32, i32* @EAP_TLV_TYPE_MANDATORY, align 4
  %16 = load i32, i32* @EAP_TLV_NAK_TLV, align 4
  %17 = or i32 %15, %16
  %18 = call i8* @host_to_be16(i32 %17)
  %19 = load %struct.eap_tlv_nak_tlv*, %struct.eap_tlv_nak_tlv** %7, align 8
  %20 = getelementptr inbounds %struct.eap_tlv_nak_tlv, %struct.eap_tlv_nak_tlv* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = call i8* @host_to_be16(i32 6)
  %22 = load %struct.eap_tlv_nak_tlv*, %struct.eap_tlv_nak_tlv** %7, align 8
  %23 = getelementptr inbounds %struct.eap_tlv_nak_tlv, %struct.eap_tlv_nak_tlv* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @host_to_be32(i32 %24)
  %26 = load %struct.eap_tlv_nak_tlv*, %struct.eap_tlv_nak_tlv** %7, align 8
  %27 = getelementptr inbounds %struct.eap_tlv_nak_tlv, %struct.eap_tlv_nak_tlv* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i8* @host_to_be16(i32 %28)
  %30 = load %struct.eap_tlv_nak_tlv*, %struct.eap_tlv_nak_tlv** %7, align 8
  %31 = getelementptr inbounds %struct.eap_tlv_nak_tlv, %struct.eap_tlv_nak_tlv* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %32, %struct.wpabuf** %3, align 8
  br label %33

33:                                               ; preds = %12, %11
  %34 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %34
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local %struct.eap_tlv_nak_tlv* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i8* @host_to_be16(i32) #1

declare dso_local i32 @host_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
