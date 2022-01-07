; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_build_idi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_build_idi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_initiator_data = type { i32, i32* }
%struct.wpabuf = type { i32 }
%struct.ikev2_payload_hdr = type { i32, i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IKEV2: Adding IDi payload\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"IKEV2: No IDi available\00", align 1
@ID_KEY_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_initiator_data*, %struct.wpabuf*, i32)* @ikev2_build_idi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_build_idi(%struct.ikev2_initiator_data* %0, %struct.wpabuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ikev2_initiator_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ikev2_payload_hdr*, align 8
  %9 = alloca i64, align 8
  store %struct.ikev2_initiator_data* %0, %struct.ikev2_initiator_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %13 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @MSG_INFO, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %54

19:                                               ; preds = %3
  %20 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %21 = call %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf* %20, i32 24)
  store %struct.ikev2_payload_hdr* %21, %struct.ikev2_payload_hdr** %8, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %24 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %26 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %28 = load i32, i32* @ID_KEY_ID, align 4
  %29 = call i32 @wpabuf_put_u8(%struct.wpabuf* %27, i32 %28)
  %30 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %31 = call %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf* %30, i32 3)
  %32 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %33 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %34 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %37 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @wpabuf_put_data(%struct.wpabuf* %32, i32* %35, i32 %38)
  %40 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %41 = call %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf* %40, i32 0)
  %42 = bitcast %struct.ikev2_payload_hdr* %41 to i32*
  %43 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %44 = bitcast %struct.ikev2_payload_hdr* %43 to i32*
  %45 = ptrtoint i32* %42 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  store i64 %48, i64* %9, align 8
  %49 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %50 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @WPA_PUT_BE16(i32 %51, i64 %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %19, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @WPA_PUT_BE16(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
