; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_gpsk.c_eap_gpsk_build_gpsk_3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_gpsk.c_eap_gpsk_build_gpsk_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32, i32 }
%struct.eap_gpsk_data = type { i32, i32, i32, i32, i32, i32 }
%struct.eap_gpsk_csuite = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"EAP-GPSK: Request/GPSK-3\00", align 1
@EAP_GPSK_RAND_LEN = common dso_local global i32 0, align 4
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_GPSK = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"EAP-GPSK: Failed to allocate memory for request/GPSK-3\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@EAP_GPSK_OPCODE_GPSK_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_gpsk_data*, i32)* @eap_gpsk_build_gpsk_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_gpsk_build_gpsk_3(%struct.eap_sm* %0, %struct.eap_gpsk_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_gpsk_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.eap_gpsk_csuite*, align 8
  %13 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_gpsk_data* %1, %struct.eap_gpsk_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %17 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %20 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @eap_gpsk_mic_len(i32 %18, i32 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %24 = mul nsw i32 2, %23
  %25 = add nsw i32 1, %24
  %26 = add nsw i32 %25, 2
  %27 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %28 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 8
  %33 = add i64 %32, 2
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %33, %34
  store i64 %35, i64* %10, align 8
  %36 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %37 = load i32, i32* @EAP_TYPE_GPSK, align 4
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.wpabuf* @eap_msg_alloc(i32 %36, i32 %37, i64 %38, i32 %39, i32 %40)
  store %struct.wpabuf* %41, %struct.wpabuf** %13, align 8
  %42 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %43 = icmp eq %struct.wpabuf* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %3
  %45 = load i32, i32* @MSG_ERROR, align 4
  %46 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %48 = load i32, i32* @FAILURE, align 4
  %49 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %47, i32 %48)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %136

50:                                               ; preds = %3
  %51 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %52 = load i32, i32* @EAP_GPSK_OPCODE_GPSK_3, align 4
  %53 = call i32 @wpabuf_put_u8(%struct.wpabuf* %51, i32 %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %55 = call i8* @wpabuf_put(%struct.wpabuf* %54, i64 0)
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** %9, align 8
  %57 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %58 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %59 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %62 = call i32 @wpabuf_put_data(%struct.wpabuf* %57, i32 %60, i32 %61)
  %63 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %64 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %65 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %68 = call i32 @wpabuf_put_data(%struct.wpabuf* %63, i32 %66, i32 %67)
  %69 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %70 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %71 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @wpabuf_put_be16(%struct.wpabuf* %69, i32 %72)
  %74 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %75 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %76 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %79 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @wpabuf_put_data(%struct.wpabuf* %74, i32 %77, i32 %80)
  %82 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %83 = call i8* @wpabuf_put(%struct.wpabuf* %82, i64 8)
  %84 = bitcast i8* %83 to %struct.eap_gpsk_csuite*
  store %struct.eap_gpsk_csuite* %84, %struct.eap_gpsk_csuite** %12, align 8
  %85 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %12, align 8
  %86 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %89 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @WPA_PUT_BE32(i32 %87, i32 %90)
  %92 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %12, align 8
  %93 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %96 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @WPA_PUT_BE16(i32 %94, i32 %97)
  %99 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %100 = call i32 @wpabuf_put_be16(%struct.wpabuf* %99, i32 0)
  %101 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call i8* @wpabuf_put(%struct.wpabuf* %101, i64 %102)
  %104 = bitcast i8* %103 to i32*
  store i32* %104, i32** %8, align 8
  %105 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %106 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %109 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %112 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %115 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = ptrtoint i32* %118 to i64
  %121 = ptrtoint i32* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 4
  %124 = trunc i64 %123 to i32
  %125 = load i32*, i32** %8, align 8
  %126 = call i64 @eap_gpsk_compute_mic(i32 %107, i32 %110, i32 %113, i32 %116, i32* %117, i32 %124, i32* %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %50
  %129 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %130 = call i32 @wpabuf_free(%struct.wpabuf* %129)
  %131 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %132 = load i32, i32* @FAILURE, align 4
  %133 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %131, i32 %132)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %136

134:                                              ; preds = %50
  %135 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  store %struct.wpabuf* %135, %struct.wpabuf** %4, align 8
  br label %136

136:                                              ; preds = %134, %128, %44
  %137 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %137
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @eap_gpsk_mic_len(i32, i32) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @eap_gpsk_state(%struct.eap_gpsk_data*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @WPA_PUT_BE32(i32, i32) #1

declare dso_local i32 @WPA_PUT_BE16(i32, i32) #1

declare dso_local i64 @eap_gpsk_compute_mic(i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
