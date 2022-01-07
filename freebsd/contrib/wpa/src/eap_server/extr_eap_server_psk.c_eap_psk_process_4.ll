; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_psk.c_eap_psk_process_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_psk.c_eap_psk_process_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_psk_data = type { i64, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_psk_hdr_4 = type { i32 }

@PSK_3 = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"EAP-PSK: Received PSK-4\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PSK = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"EAP-PSK: Invalid frame\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"EAP-PSK: Encrypted PCHANNEL\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"EAP-PSK: Too short PCHANNEL data in PSK-4 (len=%lu, expected 21)\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"EAP-PSK: Nonce did not increase\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"EAP-PSK: PCHANNEL decryption failed\00", align 1
@FAILURE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"EAP-PSK: Decrypted PCHANNEL message\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"EAP-PSK: R flag - CONT - unsupported\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"EAP-PSK: R flag - DONE_SUCCESS\00", align 1
@SUCCESS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"EAP-PSK: R flag - DONE_FAILURE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_psk_data*, %struct.wpabuf*)* @eap_psk_process_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_psk_process_4(%struct.eap_sm* %0, %struct.eap_psk_data* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_psk_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_psk_hdr_4*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca [16 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_psk_data* %1, %struct.eap_psk_data** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %13 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %14 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PSK_3, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %150

19:                                               ; preds = %3
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %23 = load i32, i32* @EAP_TYPE_PSK, align 4
  %24 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %25 = call i64* @eap_hdr_validate(i32 %22, i32 %23, %struct.wpabuf* %24, i64* %10)
  store i64* %25, i64** %11, align 8
  %26 = load i64*, i64** %11, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i64, i64* %10, align 8
  %30 = icmp ult i64 %29, 4
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %19
  %32 = load i32, i32* @MSG_INFO, align 4
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %150

34:                                               ; preds = %28
  %35 = load i64*, i64** %11, align 8
  %36 = bitcast i64* %35 to %struct.eap_psk_hdr_4*
  store %struct.eap_psk_hdr_4* %36, %struct.eap_psk_hdr_4** %7, align 8
  %37 = load %struct.eap_psk_hdr_4*, %struct.eap_psk_hdr_4** %7, align 8
  %38 = getelementptr inbounds %struct.eap_psk_hdr_4, %struct.eap_psk_hdr_4* %37, i64 1
  %39 = bitcast %struct.eap_psk_hdr_4* %38 to i64*
  store i64* %39, i64** %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = sub i64 %40, 4
  store i64 %41, i64* %10, align 8
  %42 = load i32, i32* @MSG_MSGDUMP, align 4
  %43 = load i64*, i64** %11, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @wpa_hexdump(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64* %43, i64 %44)
  %46 = load i64, i64* %10, align 8
  %47 = icmp ult i64 %46, 21
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = load i32, i32* @MSG_INFO, align 4
  %50 = load i64, i64* %10, align 8
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %49, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i64 %50)
  br label %150

52:                                               ; preds = %34
  %53 = load i64*, i64** %11, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load i64*, i64** %11, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load i64*, i64** %11, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load i64*, i64** %11, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %150

75:                                               ; preds = %67, %62, %57, %52
  %76 = getelementptr inbounds [16 x i64], [16 x i64]* %9, i64 0, i64 0
  %77 = call i32 @os_memset(i64* %76, i32 0, i32 12)
  %78 = getelementptr inbounds [16 x i64], [16 x i64]* %9, i64 0, i64 0
  %79 = getelementptr inbounds i64, i64* %78, i64 12
  %80 = load i64*, i64** %11, align 8
  %81 = call i32 @os_memcpy(i64* %79, i64* %80, i32 4)
  %82 = load i64*, i64** %11, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 4
  store i64* %83, i64** %11, align 8
  %84 = load i64, i64* %10, align 8
  %85 = sub i64 %84, 4
  store i64 %85, i64* %10, align 8
  %86 = load i64*, i64** %11, align 8
  store i64* %86, i64** %12, align 8
  %87 = load i64*, i64** %11, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 16
  store i64* %88, i64** %11, align 8
  %89 = load i64, i64* %10, align 8
  %90 = sub i64 %89, 16
  store i64 %90, i64* %10, align 8
  %91 = load i64*, i64** %11, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i64* @os_memdup(i64* %91, i64 %92)
  store i64* %93, i64** %8, align 8
  %94 = load i64*, i64** %8, align 8
  %95 = icmp eq i64* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %75
  br label %150

97:                                               ; preds = %75
  %98 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %99 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds [16 x i64], [16 x i64]* %9, i64 0, i64 0
  %102 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %103 = call i32 @wpabuf_head(%struct.wpabuf* %102)
  %104 = load i64*, i64** %8, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i64*, i64** %12, align 8
  %107 = call i64 @aes_128_eax_decrypt(i32 %100, i64* %101, i32 128, i32 %103, i32 22, i64* %104, i64 %105, i64* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %97
  %110 = load i32, i32* @MSG_WARNING, align 4
  %111 = call i32 (i32, i8*, ...) @wpa_printf(i32 %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i64*, i64** %8, align 8
  %113 = call i32 @os_free(i64* %112)
  %114 = load i8*, i8** @FAILURE, align 8
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %117 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %150

118:                                              ; preds = %97
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = load i64*, i64** %8, align 8
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @wpa_hexdump(i32 %119, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64* %120, i64 %121)
  %123 = load i64*, i64** %8, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load i64, i64* %124, align 8
  %126 = ashr i64 %125, 6
  switch i64 %126, label %147 [
    i64 130, label %127
    i64 128, label %134
    i64 129, label %140
  ]

127:                                              ; preds = %118
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = call i32 (i32, i8*, ...) @wpa_printf(i32 %128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %130 = load i8*, i8** @FAILURE, align 8
  %131 = ptrtoint i8* %130 to i64
  %132 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %133 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  br label %147

134:                                              ; preds = %118
  %135 = load i32, i32* @MSG_DEBUG, align 4
  %136 = call i32 (i32, i8*, ...) @wpa_printf(i32 %135, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %137 = load i64, i64* @SUCCESS, align 8
  %138 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %139 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  br label %147

140:                                              ; preds = %118
  %141 = load i32, i32* @MSG_DEBUG, align 4
  %142 = call i32 (i32, i8*, ...) @wpa_printf(i32 %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %143 = load i8*, i8** @FAILURE, align 8
  %144 = ptrtoint i8* %143 to i64
  %145 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %146 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %118, %140, %134, %127
  %148 = load i64*, i64** %8, align 8
  %149 = call i32 @os_free(i64* %148)
  br label %150

150:                                              ; preds = %147, %109, %96, %72, %48, %31, %18
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local i32 @os_memset(i64*, i32, i32) #1

declare dso_local i32 @os_memcpy(i64*, i64*, i32) #1

declare dso_local i64* @os_memdup(i64*, i64) #1

declare dso_local i64 @aes_128_eax_decrypt(i32, i64*, i32, i32, i32, i64*, i64, i64*) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @os_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
