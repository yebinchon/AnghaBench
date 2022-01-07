; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_process_m5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_process_m5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32, i32*, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WPS: Received M5\00", align 1
@RECV_M5 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"WPS: Unexpected state (%d) for receiving M5\00", align 1
@SEND_WSC_NACK = common dso_local global i8* null, align 8
@WPS_CONTINUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"WPS: Reject negotiation due to PBC session overlap\00", align 1
@WPS_CFG_MULTIPLE_PBC_DETECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"WPS: Failed to decrypted Encrypted Settings attribute\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"WPS: Processing decrypted Encrypted Settings attribute\00", align 1
@SEND_M6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*)* @wps_process_m5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_m5(%struct.wps_data* %0, %struct.wpabuf* %1, %struct.wps_parse_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wps_parse_attr*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.wps_parse_attr, align 8
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store %struct.wps_parse_attr* %2, %struct.wps_parse_attr** %7, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %13 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RECV_M5, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %20 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i8*, i8** @SEND_WSC_NACK, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %26 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %27, i32* %4, align 4
  br label %148

28:                                               ; preds = %3
  %29 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %30 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %28
  %34 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %35 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %33
  %43 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %44 = call i32 @wps_registrar_skip_overlap(%struct.wps_data* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i8*, i8** @SEND_WSC_NACK, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %52 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* @WPS_CFG_MULTIPLE_PBC_DETECTED, align 4
  %54 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %55 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %56, i32* %4, align 4
  br label %148

57:                                               ; preds = %42, %33, %28
  %58 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %59 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %60 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @wps_process_registrar_nonce(%struct.wps_data* %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %57
  %65 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %66 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %67 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %70 = call i64 @wps_process_authenticator(%struct.wps_data* %65, i32 %68, %struct.wpabuf* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %64, %57
  %73 = load i8*, i8** @SEND_WSC_NACK, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %76 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %77, i32* %4, align 4
  br label %148

78:                                               ; preds = %64
  %79 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %80 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %81 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %84 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data* %79, i32 %82, i32 %85)
  store %struct.wpabuf* %86, %struct.wpabuf** %8, align 8
  %87 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %88 = icmp eq %struct.wpabuf* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %78
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i8*, i8** @SEND_WSC_NACK, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %95 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %96, i32* %4, align 4
  br label %148

97:                                               ; preds = %78
  %98 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %99 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %100 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  %103 = zext i1 %102 to i32
  %104 = call i64 @wps_validate_m5_encr(%struct.wpabuf* %98, i32 %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %97
  %107 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %108 = call i32 @wpabuf_clear_free(%struct.wpabuf* %107)
  %109 = load i8*, i8** @SEND_WSC_NACK, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %112 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %113, i32* %4, align 4
  br label %148

114:                                              ; preds = %97
  %115 = load i32, i32* @MSG_DEBUG, align 4
  %116 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %117 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %118 = call i64 @wps_parse_msg(%struct.wpabuf* %117, %struct.wps_parse_attr* %9)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %114
  %121 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %122 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %123 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %9, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @wps_process_key_wrap_auth(%struct.wps_data* %121, %struct.wpabuf* %122, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %120
  %128 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %129 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %9, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @wps_process_e_snonce1(%struct.wps_data* %128, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %127, %120, %114
  %134 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %135 = call i32 @wpabuf_clear_free(%struct.wpabuf* %134)
  %136 = load i8*, i8** @SEND_WSC_NACK, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %139 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %140, i32* %4, align 4
  br label %148

141:                                              ; preds = %127
  %142 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %143 = call i32 @wpabuf_clear_free(%struct.wpabuf* %142)
  %144 = load i64, i64* @SEND_M6, align 8
  %145 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %146 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %141, %133, %106, %89, %72, %46, %17
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wps_registrar_skip_overlap(%struct.wps_data*) #1

declare dso_local i64 @wps_process_registrar_nonce(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_authenticator(%struct.wps_data*, i32, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data*, i32, i32) #1

declare dso_local i64 @wps_validate_m5_encr(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_process_key_wrap_auth(%struct.wps_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @wps_process_e_snonce1(%struct.wps_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
