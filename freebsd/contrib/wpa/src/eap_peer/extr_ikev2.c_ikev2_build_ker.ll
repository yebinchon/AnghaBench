; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_build_ker.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_build_ker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_responder_data = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.ikev2_payload_hdr = type { i32, i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IKEV2: Adding KEr payload\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"IKEV2: Failed to initialize DH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_responder_data*, %struct.wpabuf*, i32)* @ikev2_build_ker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_build_ker(%struct.ikev2_responder_data* %0, %struct.wpabuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ikev2_responder_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ikev2_payload_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wpabuf*, align 8
  store %struct.ikev2_responder_data* %0, %struct.ikev2_responder_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %14 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %17 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %16, i32 0, i32 2
  %18 = call %struct.wpabuf* @dh_init(%struct.TYPE_4__* %15, i32* %17)
  store %struct.wpabuf* %18, %struct.wpabuf** %10, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %20 = icmp eq %struct.wpabuf* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %69

24:                                               ; preds = %3
  %25 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %26 = call %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf* %25, i32 24)
  store %struct.ikev2_payload_hdr* %26, %struct.ikev2_payload_hdr** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %29 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %31 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %33 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %34 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @wpabuf_put_be16(%struct.wpabuf* %32, i32 %36)
  %38 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %39 = call %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf* %38, i32 2)
  %40 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %41 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %42 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %47 = call i32 @wpabuf_len(%struct.wpabuf* %46)
  %48 = sub nsw i32 %45, %47
  %49 = call %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf* %40, i32 %48)
  %50 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %52 = call i32 @wpabuf_put_buf(%struct.wpabuf* %50, %struct.wpabuf* %51)
  %53 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %54 = call i32 @wpabuf_free(%struct.wpabuf* %53)
  %55 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %56 = call %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf* %55, i32 0)
  %57 = bitcast %struct.ikev2_payload_hdr* %56 to i32*
  %58 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %59 = bitcast %struct.ikev2_payload_hdr* %58 to i32*
  %60 = ptrtoint i32* %57 to i64
  %61 = ptrtoint i32* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  store i64 %63, i64* %9, align 8
  %64 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %65 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @WPA_PUT_BE16(i32 %66, i64 %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %24, %21
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @dh_init(%struct.TYPE_4__*, i32*) #1

declare dso_local %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @WPA_PUT_BE16(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
