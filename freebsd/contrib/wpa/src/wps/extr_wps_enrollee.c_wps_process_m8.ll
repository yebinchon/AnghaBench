; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_m8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_m8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WPS: Received M8\00", align 1
@RECV_M8 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"WPS: Unexpected state (%d) for receiving M8\00", align 1
@SEND_WSC_NACK = common dso_local global i8* null, align 8
@WPS_CONTINUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"WPS: AP Setup is locked - refuse registration of a new Registrar\00", align 1
@WPS_CFG_SETUP_LOCKED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"WPS: Failed to decrypted Encrypted Settings attribute\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"WPS: Processing decrypted Encrypted Settings attribute\00", align 1
@WPS_MSG_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*)* @wps_process_m8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_m8(%struct.wps_data* %0, %struct.wpabuf* %1, %struct.wps_parse_attr* %2) #0 {
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
  %15 = load i64, i64* @RECV_M8, align 8
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
  br label %168

28:                                               ; preds = %3
  %29 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %30 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %31 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @wps_process_enrollee_nonce(%struct.wps_data* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %37 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %41 = call i64 @wps_process_authenticator(%struct.wps_data* %36, i32 %39, %struct.wpabuf* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35, %28
  %44 = load i8*, i8** @SEND_WSC_NACK, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %47 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %48, i32* %4, align 4
  br label %168

49:                                               ; preds = %35
  %50 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %51 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %49
  %57 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %58 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @WPS_CFG_SETUP_LOCKED, align 4
  %67 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %68 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i8*, i8** @SEND_WSC_NACK, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %72 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %73, i32* %4, align 4
  br label %168

74:                                               ; preds = %56, %49
  %75 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %76 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %77 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %80 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data* %75, i32 %78, i32 %81)
  store %struct.wpabuf* %82, %struct.wpabuf** %8, align 8
  %83 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %84 = icmp eq %struct.wpabuf* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %74
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i8*, i8** @SEND_WSC_NACK, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %91 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %92, i32* %4, align 4
  br label %168

93:                                               ; preds = %74
  %94 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %95 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %96 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %101 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  %104 = zext i1 %103 to i32
  %105 = call i64 @wps_validate_m8_encr(%struct.wpabuf* %94, i32 %99, i32 %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %93
  %108 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %109 = call i32 @wpabuf_clear_free(%struct.wpabuf* %108)
  %110 = load i8*, i8** @SEND_WSC_NACK, align 8
  %111 = ptrtoint i8* %110 to i64
  %112 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %113 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %114, i32* %4, align 4
  br label %168

115:                                              ; preds = %93
  %116 = load i32, i32* @MSG_DEBUG, align 4
  %117 = call i32 (i32, i8*, ...) @wpa_printf(i32 %116, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %118 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %119 = call i64 @wps_parse_msg(%struct.wpabuf* %118, %struct.wps_parse_attr* %9)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %153, label %121

121:                                              ; preds = %115
  %122 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %123 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %124 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %9, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @wps_process_key_wrap_auth(%struct.wps_data* %122, %struct.wpabuf* %123, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %153, label %128

128:                                              ; preds = %121
  %129 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %130 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %9, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %9, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %9, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %137 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  %140 = zext i1 %139 to i32
  %141 = call i64 @wps_process_creds(%struct.wps_data* %129, i32 %131, i32 %133, i32 %135, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %128
  %144 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %145 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %146 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %147 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i64 @wps_process_ap_settings_e(%struct.wps_data* %144, %struct.wps_parse_attr* %9, %struct.wpabuf* %145, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %143, %128, %121, %115
  %154 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %155 = call i32 @wpabuf_clear_free(%struct.wpabuf* %154)
  %156 = load i8*, i8** @SEND_WSC_NACK, align 8
  %157 = ptrtoint i8* %156 to i64
  %158 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %159 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %160, i32* %4, align 4
  br label %168

161:                                              ; preds = %143
  %162 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %163 = call i32 @wpabuf_clear_free(%struct.wpabuf* %162)
  %164 = load i64, i64* @WPS_MSG_DONE, align 8
  %165 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %166 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  %167 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %161, %153, %107, %85, %63, %43, %17
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wps_process_enrollee_nonce(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_authenticator(%struct.wps_data*, i32, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data*, i32, i32) #1

declare dso_local i64 @wps_validate_m8_encr(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_process_key_wrap_auth(%struct.wps_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @wps_process_creds(%struct.wps_data*, i32, i32, i32, i32) #1

declare dso_local i64 @wps_process_ap_settings_e(%struct.wps_data*, %struct.wps_parse_attr*, %struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
