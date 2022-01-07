; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_build_notification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_build_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_responder_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.ikev2_payload_hdr = type { i32, i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"IKEV2: Adding Notification payload\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"IKEV2: No Notify Message Type available\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"IKEV2: No DH Group selected for INVALID_KE_PAYLOAD notifications\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"IKEV2: INVALID_KE_PAYLOAD - request DH Group #%d\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"IKEV2: Unsupported Notify Message Type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_responder_data*, %struct.wpabuf*, i32)* @ikev2_build_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_build_notification(%struct.ikev2_responder_data* %0, %struct.wpabuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ikev2_responder_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ikev2_payload_hdr*, align 8
  %9 = alloca i64, align 8
  store %struct.ikev2_responder_data* %0, %struct.ikev2_responder_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %13 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @MSG_INFO, align 4
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %83

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
  %28 = call i32 @wpabuf_put_u8(%struct.wpabuf* %27, i32 0)
  %29 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %30 = call i32 @wpabuf_put_u8(%struct.wpabuf* %29, i32 0)
  %31 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %32 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %33 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wpabuf_put_be16(%struct.wpabuf* %31, i32 %34)
  %36 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %37 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %62 [
    i32 128, label %39
    i32 129, label %61
  ]

39:                                               ; preds = %19
  %40 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %41 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @MSG_INFO, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %83

48:                                               ; preds = %39
  %49 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %50 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %51 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @wpabuf_put_be16(%struct.wpabuf* %49, i32 %53)
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %57 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %68

61:                                               ; preds = %19
  br label %68

62:                                               ; preds = %19
  %63 = load i32, i32* @MSG_INFO, align 4
  %64 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %65 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  store i32 -1, i32* %4, align 4
  br label %83

68:                                               ; preds = %61, %48
  %69 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %70 = call %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf* %69, i32 0)
  %71 = bitcast %struct.ikev2_payload_hdr* %70 to i32*
  %72 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %73 = bitcast %struct.ikev2_payload_hdr* %72 to i32*
  %74 = ptrtoint i32* %71 to i64
  %75 = ptrtoint i32* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  store i64 %77, i64* %9, align 8
  %78 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %79 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @WPA_PUT_BE16(i32 %80, i64 %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %68, %62, %45, %16
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @WPA_PUT_BE16(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
