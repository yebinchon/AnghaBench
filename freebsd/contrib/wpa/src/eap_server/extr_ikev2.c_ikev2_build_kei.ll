; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_build_kei.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_build_kei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_initiator_data = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.ikev2_payload_hdr = type { i32, i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IKEV2: Adding KEi payload\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"IKEV2: Failed to initialize DH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_initiator_data*, %struct.wpabuf*, i32)* @ikev2_build_kei to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_build_kei(%struct.ikev2_initiator_data* %0, %struct.wpabuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ikev2_initiator_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ikev2_payload_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wpabuf*, align 8
  store %struct.ikev2_initiator_data* %0, %struct.ikev2_initiator_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %14 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_5__* @dh_groups_get(i32 %16)
  %18 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %19 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %18, i32 0, i32 0
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %19, align 8
  %20 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %21 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %24 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %23, i32 0, i32 2
  %25 = call %struct.wpabuf* @dh_init(%struct.TYPE_5__* %22, i32* %24)
  store %struct.wpabuf* %25, %struct.wpabuf** %10, align 8
  %26 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %27 = icmp eq %struct.wpabuf* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %76

31:                                               ; preds = %3
  %32 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %33 = call %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf* %32, i32 24)
  store %struct.ikev2_payload_hdr* %33, %struct.ikev2_payload_hdr** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %36 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %38 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %40 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %41 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @wpabuf_put_be16(%struct.wpabuf* %39, i32 %43)
  %45 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %46 = call %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf* %45, i32 2)
  %47 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %48 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %49 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %54 = call i32 @wpabuf_len(%struct.wpabuf* %53)
  %55 = sub nsw i32 %52, %54
  %56 = call %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf* %47, i32 %55)
  %57 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %58 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %59 = call i32 @wpabuf_put_buf(%struct.wpabuf* %57, %struct.wpabuf* %58)
  %60 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %61 = call i32 @wpabuf_free(%struct.wpabuf* %60)
  %62 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %63 = call %struct.ikev2_payload_hdr* @wpabuf_put(%struct.wpabuf* %62, i32 0)
  %64 = bitcast %struct.ikev2_payload_hdr* %63 to i32*
  %65 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %66 = bitcast %struct.ikev2_payload_hdr* %65 to i32*
  %67 = ptrtoint i32* %64 to i64
  %68 = ptrtoint i32* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 4
  store i64 %70, i64* %9, align 8
  %71 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %8, align 8
  %72 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @WPA_PUT_BE16(i32 %73, i64 %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %31, %28
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @dh_groups_get(i32) #1

declare dso_local %struct.wpabuf* @dh_init(%struct.TYPE_5__*, i32*) #1

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
