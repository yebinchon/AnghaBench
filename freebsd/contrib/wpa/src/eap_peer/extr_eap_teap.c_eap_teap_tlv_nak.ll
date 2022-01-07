; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_tlv_nak.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_tlv_nak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.teap_tlv_nak = type { i8*, i32, i8*, i8* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"EAP-TEAP: Add NAK TLV (Vendor-Id %u NAK-Type %u)\00", align 1
@TEAP_TLV_MANDATORY = common dso_local global i32 0, align 4
@TEAP_TLV_NAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i32, i32)* @eap_teap_tlv_nak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_teap_tlv_nak(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.teap_tlv_nak*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @wpa_printf(i32 %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = call %struct.wpabuf* @wpabuf_alloc(i32 32)
  store %struct.wpabuf* %12, %struct.wpabuf** %6, align 8
  %13 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %14 = icmp ne %struct.wpabuf* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %18 = call %struct.teap_tlv_nak* @wpabuf_put(%struct.wpabuf* %17, i32 32)
  store %struct.teap_tlv_nak* %18, %struct.teap_tlv_nak** %7, align 8
  %19 = load i32, i32* @TEAP_TLV_MANDATORY, align 4
  %20 = load i32, i32* @TEAP_TLV_NAK, align 4
  %21 = or i32 %19, %20
  %22 = call i8* @host_to_be16(i32 %21)
  %23 = load %struct.teap_tlv_nak*, %struct.teap_tlv_nak** %7, align 8
  %24 = getelementptr inbounds %struct.teap_tlv_nak, %struct.teap_tlv_nak* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = call i8* @host_to_be16(i32 6)
  %26 = load %struct.teap_tlv_nak*, %struct.teap_tlv_nak** %7, align 8
  %27 = getelementptr inbounds %struct.teap_tlv_nak, %struct.teap_tlv_nak* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @host_to_be32(i32 %28)
  %30 = load %struct.teap_tlv_nak*, %struct.teap_tlv_nak** %7, align 8
  %31 = getelementptr inbounds %struct.teap_tlv_nak, %struct.teap_tlv_nak* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i8* @host_to_be16(i32 %32)
  %34 = load %struct.teap_tlv_nak*, %struct.teap_tlv_nak** %7, align 8
  %35 = getelementptr inbounds %struct.teap_tlv_nak, %struct.teap_tlv_nak* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %36, %struct.wpabuf** %3, align 8
  br label %37

37:                                               ; preds = %16, %15
  %38 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %38
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local %struct.teap_tlv_nak* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i8* @host_to_be16(i32) #1

declare dso_local i32 @host_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
