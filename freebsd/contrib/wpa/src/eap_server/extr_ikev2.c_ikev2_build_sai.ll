; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_build_sai.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_build_sai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_initiator_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32 }
%struct.wpabuf = type { i32 }
%struct.ikev2_payload_hdr = type { i32, i64, i32 }
%struct.ikev2_proposal = type { i32, i32, i32, i32 }
%struct.ikev2_transform = type { i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IKEV2: Adding SAi payload\00", align 1
@IKEV2_PROTOCOL_IKE = common dso_local global i32 0, align 4
@IKEV2_TRANSFORM_ENCR = common dso_local global i32 0, align 4
@ENCR_AES_CBC = common dso_local global i64 0, align 8
@IKEV2_TRANSFORM_PRF = common dso_local global i32 0, align 4
@IKEV2_TRANSFORM_INTEG = common dso_local global i32 0, align 4
@IKEV2_TRANSFORM_DH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_initiator_data*, %struct.wpabuf*, i32)* @ikev2_build_sai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_build_sai(%struct.ikev2_initiator_data* %0, %struct.wpabuf* %1, i32 %2) #0 {
  %4 = alloca %struct.ikev2_initiator_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ikev2_payload_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ikev2_proposal*, align 8
  %10 = alloca %struct.ikev2_transform*, align 8
  store %struct.ikev2_initiator_data* %0, %struct.ikev2_initiator_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %14 = call i8* @wpabuf_put(%struct.wpabuf* %13, i32 24)
  %15 = bitcast i8* %14 to %struct.ikev2_payload_hdr*
  store %struct.ikev2_payload_hdr* %15, %struct.ikev2_payload_hdr** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %7, align 8
  %18 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %7, align 8
  %20 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %22 = call i8* @wpabuf_put(%struct.wpabuf* %21, i32 16)
  %23 = bitcast i8* %22 to %struct.ikev2_proposal*
  store %struct.ikev2_proposal* %23, %struct.ikev2_proposal** %9, align 8
  %24 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %4, align 8
  %25 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %9, align 8
  %29 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @IKEV2_PROTOCOL_IKE, align 4
  %31 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %9, align 8
  %32 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %9, align 8
  %34 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %33, i32 0, i32 0
  store i32 4, i32* %34, align 4
  %35 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %36 = call i8* @wpabuf_put(%struct.wpabuf* %35, i32 16)
  %37 = bitcast i8* %36 to %struct.ikev2_transform*
  store %struct.ikev2_transform* %37, %struct.ikev2_transform** %10, align 8
  %38 = load %struct.ikev2_transform*, %struct.ikev2_transform** %10, align 8
  %39 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %38, i32 0, i32 0
  store i32 3, i32* %39, align 4
  %40 = load i32, i32* @IKEV2_TRANSFORM_ENCR, align 4
  %41 = load %struct.ikev2_transform*, %struct.ikev2_transform** %10, align 8
  %42 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ikev2_transform*, %struct.ikev2_transform** %10, align 8
  %44 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %4, align 8
  %47 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @WPA_PUT_BE16(i32 %45, i64 %49)
  %51 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %4, align 8
  %52 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ENCR_AES_CBC, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %3
  %58 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %59 = call i32 @wpabuf_put_be16(%struct.wpabuf* %58, i32 32782)
  %60 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %61 = call i32 @wpabuf_put_be16(%struct.wpabuf* %60, i32 128)
  br label %62

62:                                               ; preds = %57, %3
  %63 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %64 = call i8* @wpabuf_put(%struct.wpabuf* %63, i32 0)
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.ikev2_transform*, %struct.ikev2_transform** %10, align 8
  %67 = bitcast %struct.ikev2_transform* %66 to i32*
  %68 = ptrtoint i32* %65 to i64
  %69 = ptrtoint i32* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 4
  store i64 %71, i64* %8, align 8
  %72 = load %struct.ikev2_transform*, %struct.ikev2_transform** %10, align 8
  %73 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @WPA_PUT_BE16(i32 %74, i64 %75)
  %77 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %78 = call i8* @wpabuf_put(%struct.wpabuf* %77, i32 16)
  %79 = bitcast i8* %78 to %struct.ikev2_transform*
  store %struct.ikev2_transform* %79, %struct.ikev2_transform** %10, align 8
  %80 = load %struct.ikev2_transform*, %struct.ikev2_transform** %10, align 8
  %81 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %80, i32 0, i32 0
  store i32 3, i32* %81, align 4
  %82 = load %struct.ikev2_transform*, %struct.ikev2_transform** %10, align 8
  %83 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @WPA_PUT_BE16(i32 %84, i64 16)
  %86 = load i32, i32* @IKEV2_TRANSFORM_PRF, align 4
  %87 = load %struct.ikev2_transform*, %struct.ikev2_transform** %10, align 8
  %88 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ikev2_transform*, %struct.ikev2_transform** %10, align 8
  %90 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %4, align 8
  %93 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @WPA_PUT_BE16(i32 %91, i64 %95)
  %97 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %98 = call i8* @wpabuf_put(%struct.wpabuf* %97, i32 16)
  %99 = bitcast i8* %98 to %struct.ikev2_transform*
  store %struct.ikev2_transform* %99, %struct.ikev2_transform** %10, align 8
  %100 = load %struct.ikev2_transform*, %struct.ikev2_transform** %10, align 8
  %101 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %100, i32 0, i32 0
  store i32 3, i32* %101, align 4
  %102 = load %struct.ikev2_transform*, %struct.ikev2_transform** %10, align 8
  %103 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @WPA_PUT_BE16(i32 %104, i64 16)
  %106 = load i32, i32* @IKEV2_TRANSFORM_INTEG, align 4
  %107 = load %struct.ikev2_transform*, %struct.ikev2_transform** %10, align 8
  %108 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.ikev2_transform*, %struct.ikev2_transform** %10, align 8
  %110 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %4, align 8
  %113 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @WPA_PUT_BE16(i32 %111, i64 %115)
  %117 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %118 = call i8* @wpabuf_put(%struct.wpabuf* %117, i32 16)
  %119 = bitcast i8* %118 to %struct.ikev2_transform*
  store %struct.ikev2_transform* %119, %struct.ikev2_transform** %10, align 8
  %120 = load %struct.ikev2_transform*, %struct.ikev2_transform** %10, align 8
  %121 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @WPA_PUT_BE16(i32 %122, i64 16)
  %124 = load i32, i32* @IKEV2_TRANSFORM_DH, align 4
  %125 = load %struct.ikev2_transform*, %struct.ikev2_transform** %10, align 8
  %126 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load %struct.ikev2_transform*, %struct.ikev2_transform** %10, align 8
  %128 = getelementptr inbounds %struct.ikev2_transform, %struct.ikev2_transform* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %4, align 8
  %131 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @WPA_PUT_BE16(i32 %129, i64 %133)
  %135 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %136 = call i8* @wpabuf_put(%struct.wpabuf* %135, i32 0)
  %137 = bitcast i8* %136 to i32*
  %138 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %9, align 8
  %139 = bitcast %struct.ikev2_proposal* %138 to i32*
  %140 = ptrtoint i32* %137 to i64
  %141 = ptrtoint i32* %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 4
  store i64 %143, i64* %8, align 8
  %144 = load %struct.ikev2_proposal*, %struct.ikev2_proposal** %9, align 8
  %145 = getelementptr inbounds %struct.ikev2_proposal, %struct.ikev2_proposal* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %8, align 8
  %148 = call i32 @WPA_PUT_BE16(i32 %146, i64 %147)
  %149 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %150 = call i8* @wpabuf_put(%struct.wpabuf* %149, i32 0)
  %151 = bitcast i8* %150 to i32*
  %152 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %7, align 8
  %153 = bitcast %struct.ikev2_payload_hdr* %152 to i32*
  %154 = ptrtoint i32* %151 to i64
  %155 = ptrtoint i32* %153 to i64
  %156 = sub i64 %154, %155
  %157 = sdiv exact i64 %156, 4
  store i64 %157, i64* %8, align 8
  %158 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %7, align 8
  %159 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @WPA_PUT_BE16(i32 %160, i64 %161)
  ret i32 0
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @WPA_PUT_BE16(i32, i64) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
